import json
import boto3

ec2 = boto3.resource('ec2')

lt = {
    'LaunchTemplateName': 'launchTemplate',
    'Version': '$Latest'
}

def lambda_handler(event, context):
    body_part=json.loads(event['body'])
    print(body_part['action'])
    if body_part['action'] == 'queued':
      instances = ec2.create_instances(
        LaunchTemplate=lt,
        MinCount=1,
        MaxCount=1
      )
    return {
      'statusCode': 200
    }

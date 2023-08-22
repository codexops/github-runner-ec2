# Autoscale GitHub Actions Self Hosted Runner on EC2 Instance
Automate (increase or decrease) the number of self-hosted runners according to the workflow_job in the queued activity. 

![Architecture](diagram.svg)

## Flaws

- Create new runner for every workflow even though previous created runner is ideal

- Not able to scale down the runner instance

## Needs

- Create AWS key with the name my-key

- Create AWS API Gateway (integrate with lambda function)

- Create AWS IAM Role for lambda function with EC2 access

- Create Github Webhook for trigger API Gateway with payload


## Updates in Terraform code 

- Update vpc and subnet id in variables.tf file

- Update the Github Actions url and token in variables.tf file

- Update API ID of API Gateway in variables.tf file

- Update Role Arn in variables.tf file


## Run Locally

Clone the project

```bash
   git clone -b https://github.com/codexops/github-runner-ec2.git
```
Go to the project directory and follow the below steps

Step:1
```bash
  terraform init
```
Step:2
```bash
  terraform plan
```
Step:3
```bash
  terraform apply
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_scalingRunner"></a> [scalingRunner](#module\_scalingRunner) | ./modules/scalingRunner | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_amiName"></a> [amiName](#input\_amiName) | n/a | `list(string)` | <pre>[<br>  "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20230207"<br>]</pre> | no |
| <a name="input_amiRootDeviceType"></a> [amiRootDeviceType](#input\_amiRootDeviceType) | n/a | `list(string)` | <pre>[<br>  "ebs"<br>]</pre> | no |
| <a name="input_amiVirtualizationType"></a> [amiVirtualizationType](#input\_amiVirtualizationType) | n/a | `list(string)` | <pre>[<br>  "hvm"<br>]</pre> | no |
| <a name="input_apiId"></a> [apiId](#input\_apiId) | n/a | `string` | `"z504hcyztg"` | no |
| <a name="input_apiIntegrationMethod"></a> [apiIntegrationMethod](#input\_apiIntegrationMethod) | n/a | `string` | `"POST"` | no |
| <a name="input_availabilityZone"></a> [availabilityZone](#input\_availabilityZone) | n/a | `string` | `"ap-south-1a"` | no |
| <a name="input_githubActionsToken"></a> [githubActionsToken](#input\_githubActionsToken) | n/a | `string` | `"A4X7NVTJQ3TVKYBB5RXQQPDEEWEOS"` | no |
| <a name="input_githubActionsUrl"></a> [githubActionsUrl](#input\_githubActionsUrl) | n/a | `string` | `"https://github.com/bq-shubham-29/Training"` | no |
| <a name="input_instanceType"></a> [instanceType](#input\_instanceType) | n/a | `string` | `"t2.micro"` | no |
| <a name="input_keyName"></a> [keyName](#input\_keyName) | n/a | `string` | `"my-key"` | no |
| <a name="input_lambdaAction"></a> [lambdaAction](#input\_lambdaAction) | n/a | `string` | `"lambda:InvokeFunction"` | no |
| <a name="input_lambdaFunctionRuntime"></a> [lambdaFunctionRuntime](#input\_lambdaFunctionRuntime) | n/a | `string` | `"python3.9"` | no |
| <a name="input_roleArn"></a> [roleArn](#input\_roleArn) | n/a | `string` | `"arn:aws:iam::195767721609:role/EC2-lambda"` | no |
| <a name="input_subnetId"></a> [subnetId](#input\_subnetId) | n/a | `string` | `"subnet-0f8bfd2d19880f7ac"` | no |
| <a name="input_vpcId"></a> [vpcId](#input\_vpcId) | n/a | `string` | `"vpc-0366ee062ce42dc97"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Note 

Running the resources in AWS may cost money! Make sure to clean up afterwards. You can use **terraform destroy** to delete the resources.

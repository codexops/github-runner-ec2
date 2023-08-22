# scalingRunner

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | n/a |
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_apigatewayv2_integration.lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_integration) | resource |
| [aws_lambda_function.test_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_permission.lambda_permission](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |
| [aws_launch_template.launchTemplate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [archive_file.lambda](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |
| [aws_ami.instanceAmi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_apigatewayv2_api.my_api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/apigatewayv2_api) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_amiName"></a> [amiName](#input\_amiName) | n/a | `list(string)` | n/a | yes |
| <a name="input_amiRootDeviceType"></a> [amiRootDeviceType](#input\_amiRootDeviceType) | n/a | `list(string)` | n/a | yes |
| <a name="input_amiVirtualizationType"></a> [amiVirtualizationType](#input\_amiVirtualizationType) | n/a | `list(string)` | n/a | yes |
| <a name="input_apiId"></a> [apiId](#input\_apiId) | n/a | `string` | `"9cwhvxvin1"` | no |
| <a name="input_apiIntegrationMethod"></a> [apiIntegrationMethod](#input\_apiIntegrationMethod) | n/a | `string` | `"POST"` | no |
| <a name="input_availabilityZone"></a> [availabilityZone](#input\_availabilityZone) | n/a | `string` | `"ap-south-1a"` | no |
| <a name="input_githubActionsToken"></a> [githubActionsToken](#input\_githubActionsToken) | n/a | `string` | n/a | yes |
| <a name="input_githubActionsUrl"></a> [githubActionsUrl](#input\_githubActionsUrl) | n/a | `string` | n/a | yes |
| <a name="input_instanceType"></a> [instanceType](#input\_instanceType) | n/a | `string` | `"t2.micro"` | no |
| <a name="input_keyName"></a> [keyName](#input\_keyName) | n/a | `string` | `"my-key"` | no |
| <a name="input_lambdaAction"></a> [lambdaAction](#input\_lambdaAction) | n/a | `string` | `"lambda:InvokeFunction"` | no |
| <a name="input_lambdaFunctionRuntime"></a> [lambdaFunctionRuntime](#input\_lambdaFunctionRuntime) | n/a | `string` | `"python3.7"` | no |
| <a name="input_roleArn"></a> [roleArn](#input\_roleArn) | n/a | `string` | n/a | yes |
| <a name="input_subnetId"></a> [subnetId](#input\_subnetId) | n/a | `string` | `"subnet-0f8bfd2d19880f7ac"` | no |
| <a name="input_vpcId"></a> [vpcId](#input\_vpcId) | n/a | `string` | `"vpc-0366ee062ce42dc97"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

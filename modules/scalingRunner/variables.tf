variable "githubActionsUrl" {
  type    = string
}

variable "githubActionsToken" {
  type = string
}

variable "vpcId" {
  type    = string
  default = "vpc-0366ee062ce42dc97"
}

variable "subnetId" {
  type = string
  default = "subnet-0f8bfd2d19880f7ac"
}

variable "keyName" {
  type    = string
  default = "my-key"
}

variable "instanceType" {
  type    = string
  default = "t2.micro"
}

variable "roleArn" {
  type = string
}

variable "apiIntegrationMethod" {
  type = string
  default = "POST"
}

variable "availabilityZone" {
  type    = string
  default = "ap-south-1a"
}

variable "amiName" {
  type = list(string)
}

variable "amiRootDeviceType" {
  type = list(string)
}

variable "amiVirtualizationType" {
  type = list(string)
}

variable "apiId" {
  type    = string
  default = "9cwhvxvin1"
}

variable "lambdaFunctionRuntime" {
  type    = string
  default = "python3.7"
}

variable "lambdaAction" {
  type    = string
  default = "lambda:InvokeFunction"
}

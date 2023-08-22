variable "instanceType" {
  type    = string
  default = "t2.micro"
}

variable "keyName" {
  type    = string
  default = "my-key"
}

variable "vpcId" {
  type    = string
  default = "vpc-0366ee062ce42dc97"
}

variable "availabilityZone" {
  type    = string
  default = "ap-south-1a"
}

variable "subnetId" {
  type = string
  default = "subnet-0f8bfd2d19880f7ac"
}

variable "githubActionsUrl" {
  type    = string
  default = "REPO_URL_TO_REPLACE"
}

variable "githubActionsToken" {
  type    = string
  default = "A4X7NVTJQ3TVKYBB5RXQQPDEEWEOS"
}

variable "roleArn" {
  type = string
  default = "arn:aws:iam::195767721609:role/EC2-lambda"
}

variable "apiIntegrationMethod" {
  type = string
  default = "POST"
}

variable "amiName" {
  type    = list(string)
  default = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20230207"]
}

variable "amiRootDeviceType" {
  type    = list(string)
  default = ["ebs"]
}

variable "amiVirtualizationType" {
  type    = list(string)
  default = ["hvm"]
}

variable "apiId" {
  type    = string
  default = "z504hcyztg"
}

variable "lambdaFunctionRuntime" {
  type    = string
  default = "python3.9"
}

variable "lambdaAction" {
  type    = string
  default = "lambda:InvokeFunction"
}

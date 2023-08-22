module "scalingRunner" {
  source                = "./modules/scalingRunner"
  vpcId                 = var.vpcId
  subnetId              = var.subnetId
  instanceType          = var.instanceType
  keyName               = var.keyName
  githubActionsToken    = var.githubActionsToken
  githubActionsUrl      = var.githubActionsUrl
  availabilityZone      = var.availabilityZone
  apiId                 = var.apiId
  lambdaFunctionRuntime = var.lambdaFunctionRuntime
  lambdaAction          = var.lambdaAction
  amiName               = var.amiName
  amiRootDeviceType     = var.amiRootDeviceType
  amiVirtualizationType = var.amiVirtualizationType
  roleArn               = var.roleArn
  apiIntegrationMethod  = var.apiIntegrationMethod
}

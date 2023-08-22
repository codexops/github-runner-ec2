resource "aws_launch_template" "launchTemplate" {
  name          = "launchTemplate"
  image_id      = data.aws_ami.instanceAmi.id
  instance_type = var.instanceType
  key_name      = var.keyName
  network_interfaces {
    associate_public_ip_address = true
    subnet_id                   = var.subnetId
  }
  placement {
    availability_zone = var.availabilityZone
  }
  
  user_data = (base64encode(templatefile("${path.module}/userData.sh",
    {
      githubActionsToken = var.githubActionsToken
      githubActionsUrl   = var.githubActionsUrl
  })))
}


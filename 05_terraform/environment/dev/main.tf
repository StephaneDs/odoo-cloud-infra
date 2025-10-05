module "security_group" {
    source = "../../modules/security_group"

    security_group_ports        = var.security_group_ports
    instance_name              = "${local.instance_name}-sg"
    environment                = local.environment
    project_name               = local.project_name
    security_group_name        = "my-security-group"
    security_group_description = "security-group for ec2 instances"
}

module "ec2" {
    source = "../../modules/ec2"

    instance_name   = "${local.instance_name}-ec2"
    environment     = local.environment 
    project_name    = local.project_name 
    ami_id         = data.aws_ami.ubuntu.id
    instance_type   = var.instance_type
    availability_zone = "${local.region}a"
    key_name        = local.key_name
    vpc_security_group_ids = module.security_group.security_group_ids
    script_name          = var.script_name
}



module "ebs" {
    source = "../../modules/ebs"

    instance_name   = "${local.instance_name}-ebs"
    environment     = local.environment 
    project_name    = local.project_name 
    availability_zone = module.ec2.availability_zone
    volume_size     = 40
    instance_id     = module.ec2.instance_id
}



module "keypair" {
    source = "../../modules/keypair"
    key_name = local.key_name
    private_key_path = "${path.module}/key/${local.key_name}.pem"
} 
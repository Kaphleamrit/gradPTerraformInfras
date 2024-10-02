module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source              = "./ec2"
  ami_id                = "ami-0e86e20dae9224db8"
  vpc_id              = module.vpc.vpc_id
  subnet_id           = module.vpc.public_subnet_id
  instance_profile    = "my-instance-profile"
  key_name = "xyz"
  security_group_ids = ["any"]
}

module "sqs" {
  source = "./sqs"
}

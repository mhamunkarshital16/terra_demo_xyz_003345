module "ec2_instance" {
  source = "./modules/ec2"

  ami        = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  sg_id     = var.sg_id
}

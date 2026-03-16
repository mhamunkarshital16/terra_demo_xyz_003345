resource "aws_instance" "server" {
    ami = "ami-019715e0d74f695be"
    instance_type = "t3.micro"
    subnet_id = var.subnet_id
    vpc_security_group_ids = [var.sg_id]
    
    tags = {
      name = "terraform-server"
  }

}

# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  aws_security_group_ids=[aws_security_group.vps-ssh.id,aws_security_group.vps-web.id]
  tags = {
    "Name" = "EC2 Demo 2"
  }
}
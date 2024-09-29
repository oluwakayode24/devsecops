resource "aws_instance" "rosi_instance_module" {
  ami               = var.aws_ami
  instance_type     = var.instance_type
  availability_zone = var.availability_zone
  tags              = var.tags
  #region           = var.region
}
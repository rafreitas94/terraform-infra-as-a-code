resource "aws_instance" "this" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    OS        = "Linux"
    UpdatedAt = "2024-10-20"
  }
}
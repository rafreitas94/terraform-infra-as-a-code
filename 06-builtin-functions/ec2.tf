resource "aws_instance" "server" {
  count = local.instance_number <= 0 ? 0 : local.instance_number


  ami           = var.instance_ami
  instance_type = lookup(var.instance_type, var.env)

  tags = merge(
    local.commom_tags,
    {
      Env  = format("%s", var.env)
      Name = format("Instance %d", count.index + 1)
    }
  )
}
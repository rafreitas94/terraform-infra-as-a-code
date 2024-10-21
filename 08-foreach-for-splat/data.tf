data "aws_ami" "ubuntu" {
  owners      = ["amazon"]
  most_recent = true
  name_regex  = "ubuntu"

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "this" {
  for_each = {
    web = {
      name = "Web Server"
      type = "t2.micro"
    }

    ci_cd = {
      name = "CI/CD Server"
      type = "t2.micro"
    }
  }
  ami           = data.aws_ami.ubuntu.id
  instance_type = lookup(each.value, "type", null)

  tags = {
    Name   = "${each.key}: ${lookup(each.value, "name", null)}"
    Reason = "Foreach method"
  }
}
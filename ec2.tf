resource "aws_instance" "web" {
  ami           = var.ami-id
  instance_type = var.instance-type
  subnet_id     = aws_subnet.pub-sub-1.id  // Public subnet 1
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "web-server"
  }
}


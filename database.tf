resource "aws_db_subnet_group" "db_subnet_group" {
  name       = var.db-subnet
  subnet_ids = [aws_subnet.pri-sub-1.id,aws_subnet.pri-sub-2.id]

  tags = {
    Name = "db-subnet-group"
  }
}

resource "aws_db_instance" "db" {
  identifier              = "mydb"
  allocated_storage       = 20
  engine                  = "mysql"
  engine_version          = "8.0.35"
  instance_class          = "db.t3.micro"
  db_name                 = "mydatabase"
  username                = var.db-username
  password                = var.db-password
  db_subnet_group_name    = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.db_sg.id]
  skip_final_snapshot     = true

  tags = {
    Name = "mydb"
  }
}


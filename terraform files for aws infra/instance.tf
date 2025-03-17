#App Machine

resource "aws_instance" "App-Machine" {
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = "t3a.medium"
  vpc_security_group_ids = [aws_security_group.cappstone-security-grp.id]
  subnet_id       = aws_subnet.public-subnet.id 
  key_name        = "capstone-key"
  associate_public_ip_address = true 

  tags = {
    Name = "App-Machine"
  }
}

#Tools Machine

resource "aws_instance" "Tools-Machine" {
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = "t3a.medium"
  vpc_security_group_ids = [aws_security_group.cappstone-security-grp.id]
  subnet_id       = aws_subnet.public-subnet.id 
  key_name        = "capstone-key"
  associate_public_ip_address = true 

  tags = {
    Name = "Tools-Machine"
  }
}

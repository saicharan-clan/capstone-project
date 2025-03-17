# EC2 Key Pair

resource "aws_key_pair" "capstone_key" {
  key_name   = "capstone-key"
  public_key = file("/home/ubuntu/.ssh/id_ed25519.pub")
}

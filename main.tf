resource "aws_instance" "my-ec2" {
  ami = "ami-0fe630eb857a6ec83"
  instance_type = "t2.micro"
  count = 20
  tags = {
    name = "prod-machines"
  }
}
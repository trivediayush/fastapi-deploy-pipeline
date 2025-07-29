provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu 20.04 LTS
  instance_type = "t2.micro"

  tags = {
    Name = "fastapi-server"
  }

  user_data = file("../scripts/deploy.sh")
}

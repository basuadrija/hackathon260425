provider "aws" {
  region = "us-east-1"  
}

resource "aws_ecr_repository" "my_repository" {
  name = "hackathon-adrija-repo"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Environment = "Production"
    Project     = "MyApp"
  }
}

# create AWS S3 bucket for your objects


resource "aws_s3_bucket" "bucket" {
  bucket = "tf-test-prod"

  tags = {
    Name        = "tf-test-prod"
    Environment = "Dev"
  }
}

#create bucket versioning 
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = "tf-test-prod"
  versioning_configuration {
    status = "Enabled"
  }
}

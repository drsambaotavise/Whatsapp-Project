#s3 bucket with public access blocked
resource "aws_s3_bucket" "exxample_bucket" {
  bucket = "groupp1-s3-bucketttttt"
  acl    = "private"
}

#s3 bucket versioning enabled
resource "aws_s3_bucket_versioning" "versioning_s3" {
  bucket = aws_s3_bucket.exxample_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}


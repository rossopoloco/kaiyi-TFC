resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo" {
  bucket = "rosso-kaiyi-tfc-demo-${random_id.suffix.hex}"
}

output "bucket_name" {
  value = aws_s3_bucket.demo.bucket
}

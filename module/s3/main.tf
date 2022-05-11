resource "aws_s3_bucket" "terraform_state" {
  bucket = "dipakparmar.tk"
  
  versioning {
    enabled = true
  }

  tags = {
    "Name" = "${var.env}"
  }
}

resource "aws_s3_bucket_acl" "tf-example" {
  bucket = aws_s3_bucket.terraform_state.id
  acl    = "private"
}

# variable "bucket_name" { default = "" }
variable "company"     { default = "" }
variable "app"         { default = "tf-state" }
variable "env"         { default = "common" }

resource "aws_s3_bucket" "state_bucket" {
  bucket   = "$[var.company]-$[var.app]-$[var.env]"
  acl      = "private"

  versioning {
    enabled = true
  }
}

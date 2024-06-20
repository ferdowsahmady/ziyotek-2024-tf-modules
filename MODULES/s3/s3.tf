
# locals {
#   bucket_name = "ferdowsi-app-data"
#   local_bucket_no = 2
# }

# variable "bucket_numbers" {
#     default = 2
# }

# resource "aws_s3_bucket" "new_buckets" {
#   count = var.bucket_numbers
#   bucket = "${var.environment}-${local.bucket_name}-${count.index}"

#   tags = {
#     Name        = "${var.environment}-${local.bucket_name}-${count.index}"
#     Environment = "${var.environment}"
#   }
# }


# TF State Files Bucket
data "aws_s3_bucket" "selected" {
  bucket = "ferdows-terraform-state"  
}

# TF State Files Bucket-versioning
resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = data.aws_s3_bucket.selected.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "new_buckets" {
  for_each = var.s3_buckets_map 
  bucket = "${var.environment}-${each.key}-${each.value}"
  force_destroy = true

  tags = {
    Name        = "${each.key}-${each.value}"
    Environment = "${var.environment}"
  }
}

variable "s3_buckets_map" {
  default = {
    bucket1   = "reports-0524"
    bucket2   = "miscelenous"
    bucket3   = "temp-files"
  }
}

resource "aws_s3_bucket_versioning" "bucket_versioning2" {
  for_each = var.s3_buckets_map
  bucket = aws_s3_bucket.new_buckets[each.key].id
  versioning_configuration {
    status = "Enabled"
  }
}
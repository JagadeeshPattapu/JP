module "s3" {
  source      = "../../modules/s3"
  bucket_name = var.test_s3_bucket_name
}
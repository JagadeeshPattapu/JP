terraform {
  backend "s3" {
    bucket       = "test-s3-bkt-test"
    key          = "test/state.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

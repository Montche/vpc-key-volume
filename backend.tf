terraform {
  backend "s3"{
    bucket ="mdiom-w7terraformstatebucket"
    key = "dev/terraform.sfstate"
region = "us-east-1"
use_lockfile = true
  }
}
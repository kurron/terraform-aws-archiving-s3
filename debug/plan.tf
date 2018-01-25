terraform {
    required_version = ">= 0.11.2"
    backend "s3" {}
}

module "logging" {
    source = "kurron/expiring-s3/aws"
    version = "0.2.0"

    region        = "us-west-2"
    name          = "Expiring-Bucket-One"
    project       = "Debug"
    purpose       = "Testing out Terraform module"
    creator       = "kurron@jvmguy.com"
    environment   = "development"
    freetext      = "No notes at this time."
    acl           = "log-delivery-write"
    force_destroy = "true"
}

module "bucket" {
    source = "../"

    region      = "us-west-2"
    name        = "Debug-Bucket-One"
    project     = "Debug"
    purpose     = "Testing out Terraform module"
    creator     = "kurron@jvmguy.com"
    environment = "development"
    freetext    = "No notes at this time."
    log_bucket  = "${module.logging.id}"
}

output "id" {
    value = "${module.bucket.id}"
}

output "arn" {
    value = "${module.bucket.arn}"
}

output "bucket_domain_name" {
    value = "${module.bucket.bucket_domain_name}"
}

output "hosted_zone_id" {
    value = "${module.bucket.hosted_zone_id}"
}

output "region" {
    value = "${module.bucket.region}"
}

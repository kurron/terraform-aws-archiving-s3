terraform {
    required_version = ">= 0.11.2"
    backend "s3" {}
}

module "rds" {
    source = "../"

    region                           = "us-west-2"
    name                             = "Debug"
    project                          = "Debug"
    purpose                          = "Testing out Terraform module"
    creator                          = "kurron@jvmguy.com"
    environment                      = "development"
    freetext                         = "No notes at this time."
    password                         = "mypassword"
    publicly_accessible              = "true"
    multi_az                         = "true"
    domain_name                      = "transparent.engineering"
    host_name                        = "debug-mysql"
    subnet_ids                       = ["subnet-568ee830","subnet-4a33b402","subnet-ac5f72f7"]
    vpc_security_group_ids           = ["sg-566f7a2a"]
}

output "address" {
    value = "${module.rds.address}"
}

output "arn" {
    value = "${module.rds.arn}"
}

output "endpoint" {
    value = "${module.rds.endpoint}"
}

output "hosted_zone_id" {
    value = "${module.rds.hosted_zone_id}"
}

output "id" {
    value = "${module.rds.id}"
}

output "resource_id" {
    value = "${module.rds.resource_id}"
}

output "username" {
    value = "${module.rds.username}"
}

output "fqdn" {
    value = "${module.rds.fqdn}"
}

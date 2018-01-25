terraform {
    required_version = ">= 0.11.2"
    backend "s3" {}
}

provider "aws" {
    region     = "${var.region}"
}

provider "aws" {
    alias = "east"
    region = "us-east-1"
}

resource "aws_db_subnet_group" "mysql" {
    name        = "${lower( var.name )}"
    description = "Subnets the RDS instances can be place into."
    subnet_ids  = ["${var.subnet_ids}"]
    tags {
        Name        = "${var.name}"
        Project     = "${var.project}"
        Purpose     = "${var.purpose}"
        Creator     = "${var.creator}"
        Environment = "${var.environment}"
        Freetext    = "${var.freetext}"
    }
}

resource "aws_db_instance" "mysql" {
    allocated_storage                   = "${var.storage_size}"
    allow_major_version_upgrade         = "${var.allow_major_version_upgrade}"
    apply_immediately                   = "${var.apply_immediately}"
    auto_minor_version_upgrade          = "${var.auto_minor_version_upgrade}"
    availability_zone                   = "${var.availability_zone}"
    backup_retention_period             = "${var.backup_retention_period}"
    backup_window                       = "${var.backup_window}"
    copy_tags_to_snapshot               = true
    db_subnet_group_name                = "${aws_db_subnet_group.mysql.id}"
    engine                              = "mysql"
    engine_version                      = "${var.engine_version}"
    final_snapshot_identifier           = "${var.final_snapshot_identifier}"
    iam_database_authentication_enabled = "${var.iam_database_authentication_enabled}"
    identifier                          = "${lower( var.name )}"
    instance_class                      = "${var.instance_class}"
    license_model                       = "general-public-license"
    maintenance_window                  = "${var.maintenance_window}"
    monitoring_interval                 = "${var.monitoring_interval}"
    monitoring_role_arn                 = "${var.monitoring_role_arn}"
    multi_az                            = "${var.multi_az}"
    option_group_name                   = "${var.option_group_name}"
    parameter_group_name                = "${var.parameter_group_name}"
    password                            = "${var.password}"
    publicly_accessible                 = "${var.publicly_accessible}"
    skip_final_snapshot                 = "${var.skip_final_snapshot}"
    storage_encrypted                   = false
    storage_type                        = "${var.storage_type}"
    username                            = "${var.username}"
    vpc_security_group_ids              = ["${var.vpc_security_group_ids}"]

    tags {
        Name        = "${var.name}"
        Project     = "${var.project}"
        Purpose     = "${var.purpose}"
        Creator     = "${var.creator}"
        Environment = "${var.environment}"
        Freetext    = "${var.freetext}"
    }

    lifecycle {
        create_before_destroy = true
    }
}

data "aws_route53_zone" "selected" {
    provider     = "aws.east"
    name         = "${var.domain_name}."
    private_zone = false
}

resource "aws_route53_record" "mysql" {
    zone_id = "${data.aws_route53_zone.selected.zone_id}"
    name    = "${var.host_name}.${var.domain_name}"
    type    = "CNAME"
    ttl     = "300"
    records = ["${aws_db_instance.mysql.address}"]
}

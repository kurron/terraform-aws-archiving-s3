variable "region" {
    type = "string"
    description = "The AWS region to deploy into (e.g. us-east-1)"
}

variable "name" {
    type = "string"
    description = "What to name the resources being created"
}

variable "project" {
    type = "string"
    description = "Name of the project these resources are being created for"
}

variable "purpose" {
    type = "string"
    description = "The role the resources will play"
}

variable "creator" {
    type = "string"
    description = "Person creating these resources"
}

variable "environment" {
    type = "string"
    description = "Context these resources will be used in, e.g. production"
}

variable "freetext" {
    type = "string"
    description = "Information that does not fit in the other tags"
}

variable "storage_size" {
    type = "string"
    description = "How large, in GBs, to allocate for storage."
    default = "20"
}

variable "allow_major_version_upgrade" {
    type = "string"
    description = "If true, permits Amazon to automatically upgrade the instance to next major version."
    default = "true"
}

variable "apply_immediately" {
    type = "string"
    description = "If true, engine upgrades are done immediately, otherwise done during the next maintenance window."
    default = "false"
}

variable "auto_minor_version_upgrade" {
    type = "string"
    description = "If true, permits Amazon to automatically upgrade the instance to next minor version."
    default = "true"
}

variable "availability_zone" {
    type = "string"
    description = "The availability zone to place the instance into."
    default = ""
}

variable "backup_retention_period" {
    type = "string"
    description = "How many days to retain backups."
    default = "7"
}

variable "backup_window" {
    type = "string"
    description = "The daily time range (in UTC) during which automated backups are created, if enabled."
    default = "00:00-02:00"
}

variable "subnet_ids" {
    type = "list"
    description = "List of subnets ids where the instance can live, eg. [subnet-6412a148,subnet-e18b0185]"
}

variable "engine_version" {
    type = "string"
    description = "The version of MySQL to use, e.g. 5.6.17.  If left blank, the latest engine is used."
    default = ""
}

variable "final_snapshot_identifier" {
    type = "string"
    description = "What to name the final snapshot when the instance is deleted.  If left blank, no snapshot is taken."
    default = "final-snapshot"
}

variable "iam_database_authentication_enabled" {
    type = "string"
    description = "If true, mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled."
    default = "false"
}

variable "instance_class" {
    type = "string"
    description = "The instance type of the RDS instance, e.g. db.t2.micro"
    default = "db.t2.micro"
}

variable "maintenance_window" {
    type = "string"
    description = "The window to perform maintenance in."
    default = "Sun:03:00-Sun:05:00"
}

variable "monitoring_interval" {
    type = "string"
    description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. Valid Values: 0, 1, 5, 10, 15, 30, 60."
    default = "0"
}

variable "monitoring_role_arn" {
    type = "string"
    description = "The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs, if enabled."
    default = ""
}

variable "multi_az" {
    type = "string"
    description = "If true, the instance operates in multiple availability zones."
    default = "false"
}

variable "option_group_name" {
    type = "string"
    description = "Name of the DB option group to associate to the instance, e.g. default.mysql56"
    default = ""
}

variable "parameter_group_name" {
    type = "string"
    description = "Name of the DB parameter group to associate to the instance, e.g. default:mysql-5-6"
    default = ""
}

variable "password" {
    type = "string"
    description = "Password for the master DB user.  Must be at least 8 characters, e.g. mypassword"
}

variable "publicly_accessible" {
    type = "string"
    description = "If true, the database can be connected via the internet."
    default = "false"
}

variable "skip_final_snapshot" {
    type = "string"
    description = "If true, no database snapshot is created before the instance is deleted."
    default = "false"
}

variable "storage_type" {
    type = "string"
    description = "Type of storage medium to use. Maybe one of standard, gp2, io1"
    default = "gp2"
}

variable "username" {
    type = "string"
    description = "Username for the master DB user."
    default = "master"
}

variable "vpc_security_group_ids" {
    type = "list"
    description = "List of VPC security groups to associate to the instance."
}

variable "domain_name" {
    type = "string"
    description = "Route53 managed domain name to map the instance to, e.g. example.com."
}

variable "host_name" {
    type = "string"
    description = "The host name to use when creating the mapping to your managed domain name, e.g. development-mysql."
}

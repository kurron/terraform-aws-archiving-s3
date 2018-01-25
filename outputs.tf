output "address" {
    value = "${aws_db_instance.mysql.address}"
    description = "The address of the RDS instance."
}

output "arn" {
    value = "${aws_db_instance.mysql.arn}"
    description = "The ARN of the RDS instance."
}

output "endpoint" {
    value = "${aws_db_instance.mysql.endpoint}"
    description = "The connection endpoint."
}

output "hosted_zone_id" {
    value = "${aws_db_instance.mysql.hosted_zone_id}"
    description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)."
}

output "id" {
    value = "${aws_db_instance.mysql.id}"
    description = "The RDS instance ID."
}

output "resource_id" {
    value = "${aws_db_instance.mysql.resource_id}"
    description = "The RDS Resource ID of this instance."
}

output "username" {
    value = "${aws_db_instance.mysql.username}"
    description = "The master username for the database."
}

output "fqdn" {
    value = "${aws_route53_record.mysql.fqdn}"
    description = "Primary DNS name based on the custom domain name."
}

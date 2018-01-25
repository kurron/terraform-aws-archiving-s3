output "id" {
    value = "${aws_s3_bucket.bucket.id}"
    description = "The name of the bucket."
}

output "arn" {
    value = "${aws_s3_bucket.bucket.arn}"
    description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
}

output "bucket_domain_name" {
    value = "${aws_s3_bucket.bucket.bucket_domain_name}"
    description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
}

output "hosted_zone_id" {
    value = "${aws_s3_bucket.bucket.hosted_zone_id}"
    description = "The Route 53 Hosted Zone ID for this bucket's region."
}

output "region" {
    value = "${aws_s3_bucket.bucket.region}"
    description = "The AWS region this bucket resides in."
}

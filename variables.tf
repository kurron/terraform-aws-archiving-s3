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

variable "force_destroy" {
    type = "string"
    description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
    default = "false"
}

variable "versioning_enabled" {
    type = "string"
    description = "If true, object versioning is enabled. Once you version-enable a bucket, it can never return to an unversioned state. You can, however, suspend versioning on that bucket."
    default = "false"
}

variable "mfa_delete" {
    type = "string"
    description = "If true, require MFA to either change the versioning state of the bucket or permanently delete an object version."
    default = "false"
}

variable "acceleration_status" {
    type = "string"
    description = "Sets the accelerate configuration of an existing bucket. Can be Enabled or Suspended."
    default = "Suspended"
}

variable "request_payer" {
    type = "string"
    description = "Specifies who should bear the cost of Amazon S3 data transfer. Can be either BucketOwner or Requester."
    default = "BucketOwner"
}

variable "abort_incomplete_multipart_upload_days" {
    type = "string"
    description = "Specifies the number of days after initiating a multipart upload when the multipart upload must be completed. "
    default = "7"
}

variable "transition_days" {
    type = "string"
    description = "Specifies the number of days after object creation when the transition takes effect."
    default = "30"
}

variable "storage_class" {
    type = "string"
    description = "Specifies the Amazon S3 storage class to which you want the object to transition. Can be STANDARD_IA or GLACIER."
    default = "GLACIER"
}

variable "log_bucket" {
    type = "string"
    description = "The name of the bucket that will receive the log objects."
}

variable "acl" {
    type = "string"
    description = "The canned ACL to apply."
    default = "private"
}

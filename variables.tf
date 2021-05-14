variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
default = "us-east-2"
}

variable "listings-service-db-password" {
type = string
}

variable "listings-service-db-username" {
type = string
}

variable "users-service-db-password" {
type = string
}

variable "users-service-db-username" {
type = string
}

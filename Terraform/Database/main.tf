terraform {
 required_providers {
  aws = {
   source = "hashicorp/aws"
   version = "~> 3.0"
   }
 }
}

provider "aws" {
 region = var.region
}
resource "aws_db_instance" "mysqldb" {
 identifier = "mysql-remote"
 allocated_storage = var.storage
 engine = var.engine
 engine_version = var.engine_version
 instance_class = var.instance_class
 name = var.name
 username = var.username
 password = var.password
 publicly_accessible = var.publicly_accessible
 skip_final_snapshot  = true
}
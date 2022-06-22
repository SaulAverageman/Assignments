variable "region" {
 default = "us-east-1"
}
variable "storage" {
 }
variable "engine" {
 default = "mysql"
}

variable "engine_version" {
 default = "8.0.0"
}

variable "instance_class" {
 default = "db.t3.micro"
}

variable "name" {
 default = "mydb"
}

variable "username" {
 default = "doomsday"
}

variable "password" {
 default = "hulkweak0"
}

variable "publicly_accessible" {
 type = bool
 default = false
}
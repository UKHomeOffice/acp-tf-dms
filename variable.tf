

variable "name" {
  description = "name of the module"
  default     = ""

}
variable "stack_name" {
  description = "The name of our application"
  default     = "dblink"
}

variable "owner" {
  description = "A group email address to be used in tags"
  default     = "autobots@ga.gov.au"
}

variable "environment" {
  description = "Used for seperating terraform backends and naming items"
  default     = "prod"
}

variable "dns_name" {
  description = "The dns name added the dns zone, else defaults to var.name"
  default     = ""
}

variable "dns_zone" {
  description = "The required route53 domain name we are added the dns entry to i.e. example.com"
}

variable "target_backup_retention_period" {
  # Days
  default     = "30"
  description = "Retention of RDS backups"
}

variable "target_backup_window" {
  # 12:00AM-03:00AM AEST
  default     = "14:00-17:00"
  description = "RDS backup window"
}

variable "target_db_name" {
  description = "Name of the target database"
}

variable "target_db_port" {
  description = "The port the Application Server will access the database on"
  default     = 5432
}

variable "target_engine" {
  default     = "postgres"
  description = "Engine type, example values mysql, postgres"
}

variable "target_engine_version" {
  description = "Engine version"
  default     = "9.3.14"
}

variable "target_instance_class" {
  default     = "db.t2.micro"
  description = "Instance class"
}

variable "target_maintenance_window" {
  default     = "Mon:00:00-Mon:03:00"
  description = "RDS maintenance window"
}

variable "target_password" {
  description = "Password of the target database"
}

variable "target_rds_is_multi_az" {
  description = "Create backup database in separate availability zone"
  default     = "false"
}

variable "target_storage" {
  default     = "10"
  description = "Storage size in GB"
}

variable "target_storage_encrypted" {
  description = "Encrypt storage or leave unencrypted"
  default     = false
}

variable "target_username" {
  description = "Username to access the target database"
}


variable "source_app_password" {
  description = "Password for the endpoint to access the source database"
}

variable "source_app_username" {
  description = "Username for the endpoint to access the source database"
}

variable "source_backup_retention_period" {
  # Days
  default     = "1"
  description = "Retention of RDS backups"
}

variable "source_backup_window" {
  # 12:00AM-03:00AM AEST
  default     = "14:00-17:00"
  description = "RDS backup window"
}

variable "source_db_name" {
  description = "Password of the target database"
  default     = "ORACLE"
}

variable "source_db_port" {
  description = "The port the Application Server will access the database on"
  default     = 1521
}

variable "source_engine" {
  default     = "oracle-se2"
  description = "Engine type, example values mysql, postgres"
}

variable "source_engine_name" {
  default     = "oracle"
  description = "Engine name for DMS"
}

variable "source_engine_version" {
  description = "Engine version"
  default     = "12.1.0.2.v8"
}

variable "source_instance_class" {
  default     = "db.t2.micro"
  description = "Instance class"
}

variable "source_maintenance_window" {
  default     = "Mon:00:00-Mon:03:00"
  description = "RDS maintenance window"
}

variable "source_password" {
  description = "Password of the source database"
}

variable "source_rds_is_multi_az" {
  description = "Create backup database in separate availability zone"
  default     = "false"
}

variable "source_snapshot" {
  description = "Snapshot ID"
}

variable "source_storage" {
  default     = "10"
  description = "Storage size in GB"
}

variable "source_storage_encrypted" {
  description = "Encrypt storage or leave unencrypted"
  default     = false
}

variable "source_username" {
  description = "Username to access the source database"
}

variable "skip_final_snapshot" {
  description = "If true (false by default), no snapshot will be made before deleting DB"
  default     = false
}

variable "replication_instance_maintenance_window" {
  description = "Maintenance window for the replication instance"
  default     = "sun:10:30-sun:14:30"
}

variable "replication_instance_storage" {
  description = "Size of the replication instance in GB"
  default     = "10"
}

variable "replication_instance_version" {
  description = "Engine version of the replication instance"
  default     = "1.9.0"
}

variable "replication_instance_class" {
  description = "Instance class of replication instance"
  default     = "dms.t2.micro"
}


variable "database_subnet_cidr" {
  default     = ["10.0.0.0/26", "10.0.0.64/26", "10.0.0.128/26"]
  description = "List of subnets to be used for databases"
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "10.0.0.0/24"
}

variable "cidr_blocks" {
  description = "A list of network cidr block which are permitted acccess"
  default     = ["0.0.0.0/0"]
}

variable "subnet_role" {
  description = "A role used to filter out which subnets the RDS should reside, defaults to Role=compute"
  default     = "compute"
}

variable "dns_type" {
  description = "The dns record type for the RDS instance, defaults to CNAME"
  default     = "CNAME"
}

variable "dns_ttl" {
  description = "The dns record type for the RDS instance, defaults to CNAME"
  default     = "300"
}

variable "ssl_mode" {
  description = " The SSL mode to use for the connection. Can be one of none | require | verify-ca | verify-full"
  default     = "none"
}

variable "aws_db_instance_source_address" {
  description = "The Source host name of the server."
}

variable "aws_db_instance_target_address" {
  description = "The Target host name of the server."

}

variable "vpc_security_group_ids" {
  description = "security group ids"
  default     = ""
}

variable "aws_subnet_database_id" {
  description = "security group ids"
  default     = ""
}

variable "availability_zones" {
  description = "the avaialability zones in which to create the resources"
  type        = list(string)
}

variable "aws_security_group_rds_ids" {
  description = "The RDS security group ids"
  type        = list(string)
}
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.72.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dms_endpoint.source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dms_endpoint) | resource |
| [aws_dms_endpoint.target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dms_endpoint) | resource |
| [aws_dms_replication_instance.link](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dms_replication_instance) | resource |
| [aws_dms_replication_subnet_group.dms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dms_replication_subnet_group) | resource |
| [aws_internet_gateway.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_vpn_gateway.vpn_gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpn_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | the avaialability zones in which to create the resources | `list(string)` | n/a | yes |
| <a name="input_aws_db_instance_source_address"></a> [aws\_db\_instance\_source\_address](#input\_aws\_db\_instance\_source\_address) | The Source host name of the server. | `any` | n/a | yes |
| <a name="input_aws_db_instance_target_address"></a> [aws\_db\_instance\_target\_address](#input\_aws\_db\_instance\_target\_address) | The Target host name of the server. | `any` | n/a | yes |
| <a name="input_aws_security_group_rds_ids"></a> [aws\_security\_group\_rds\_ids](#input\_aws\_security\_group\_rds\_ids) | The RDS security group ids | `list(string)` | n/a | yes |
| <a name="input_aws_subnet_database_id"></a> [aws\_subnet\_database\_id](#input\_aws\_subnet\_database\_id) | security group ids | `string` | `""` | no |
| <a name="input_cidr_blocks"></a> [cidr\_blocks](#input\_cidr\_blocks) | A list of network cidr block which are permitted acccess | `list` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_database_subnet_cidr"></a> [database\_subnet\_cidr](#input\_database\_subnet\_cidr) | List of subnets to be used for databases | `list` | <pre>[<br>  "10.0.0.0/26",<br>  "10.0.0.64/26",<br>  "10.0.0.128/26"<br>]</pre> | no |
| <a name="input_dns_name"></a> [dns\_name](#input\_dns\_name) | The dns name added the dns zone, else defaults to var.name | `string` | `""` | no |
| <a name="input_dns_ttl"></a> [dns\_ttl](#input\_dns\_ttl) | The dns record type for the RDS instance, defaults to CNAME | `string` | `"300"` | no |
| <a name="input_dns_type"></a> [dns\_type](#input\_dns\_type) | The dns record type for the RDS instance, defaults to CNAME | `string` | `"CNAME"` | no |
| <a name="input_dns_zone"></a> [dns\_zone](#input\_dns\_zone) | The required route53 domain name we are added the dns entry to i.e. example.com | `any` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Used for seperating terraform backends and naming items | `string` | `"prod"` | no |
| <a name="input_name"></a> [name](#input\_name) | name of the module | `string` | `""` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | A group email address to be used in tags | `string` | `"autobots@ga.gov.au"` | no |
| <a name="input_replication_instance_class"></a> [replication\_instance\_class](#input\_replication\_instance\_class) | Instance class of replication instance | `string` | `"dms.t2.micro"` | no |
| <a name="input_replication_instance_maintenance_window"></a> [replication\_instance\_maintenance\_window](#input\_replication\_instance\_maintenance\_window) | Maintenance window for the replication instance | `string` | `"sun:10:30-sun:14:30"` | no |
| <a name="input_replication_instance_storage"></a> [replication\_instance\_storage](#input\_replication\_instance\_storage) | Size of the replication instance in GB | `string` | `"10"` | no |
| <a name="input_replication_instance_version"></a> [replication\_instance\_version](#input\_replication\_instance\_version) | Engine version of the replication instance | `string` | `"1.9.0"` | no |
| <a name="input_skip_final_snapshot"></a> [skip\_final\_snapshot](#input\_skip\_final\_snapshot) | If true (false by default), no snapshot will be made before deleting DB | `bool` | `false` | no |
| <a name="input_source_app_password"></a> [source\_app\_password](#input\_source\_app\_password) | Password for the endpoint to access the source database | `any` | n/a | yes |
| <a name="input_source_app_username"></a> [source\_app\_username](#input\_source\_app\_username) | Username for the endpoint to access the source database | `any` | n/a | yes |
| <a name="input_source_backup_retention_period"></a> [source\_backup\_retention\_period](#input\_source\_backup\_retention\_period) | Retention of RDS backups | `string` | `"1"` | no |
| <a name="input_source_backup_window"></a> [source\_backup\_window](#input\_source\_backup\_window) | RDS backup window | `string` | `"14:00-17:00"` | no |
| <a name="input_source_db_name"></a> [source\_db\_name](#input\_source\_db\_name) | Password of the target database | `string` | `"ORACLE"` | no |
| <a name="input_source_db_port"></a> [source\_db\_port](#input\_source\_db\_port) | The port the Application Server will access the database on | `number` | `1521` | no |
| <a name="input_source_engine"></a> [source\_engine](#input\_source\_engine) | Engine type, example values mysql, postgres | `string` | `"oracle-se2"` | no |
| <a name="input_source_engine_name"></a> [source\_engine\_name](#input\_source\_engine\_name) | Engine name for DMS | `string` | `"oracle"` | no |
| <a name="input_source_engine_version"></a> [source\_engine\_version](#input\_source\_engine\_version) | Engine version | `string` | `"12.1.0.2.v8"` | no |
| <a name="input_source_instance_class"></a> [source\_instance\_class](#input\_source\_instance\_class) | Instance class | `string` | `"db.t2.micro"` | no |
| <a name="input_source_maintenance_window"></a> [source\_maintenance\_window](#input\_source\_maintenance\_window) | RDS maintenance window | `string` | `"Mon:00:00-Mon:03:00"` | no |
| <a name="input_source_password"></a> [source\_password](#input\_source\_password) | Password of the source database | `any` | n/a | yes |
| <a name="input_source_rds_is_multi_az"></a> [source\_rds\_is\_multi\_az](#input\_source\_rds\_is\_multi\_az) | Create backup database in separate availability zone | `string` | `"false"` | no |
| <a name="input_source_snapshot"></a> [source\_snapshot](#input\_source\_snapshot) | Snapshot ID | `any` | n/a | yes |
| <a name="input_source_storage"></a> [source\_storage](#input\_source\_storage) | Storage size in GB | `string` | `"10"` | no |
| <a name="input_source_storage_encrypted"></a> [source\_storage\_encrypted](#input\_source\_storage\_encrypted) | Encrypt storage or leave unencrypted | `bool` | `false` | no |
| <a name="input_source_username"></a> [source\_username](#input\_source\_username) | Username to access the source database | `any` | n/a | yes |
| <a name="input_ssl_mode"></a> [ssl\_mode](#input\_ssl\_mode) | The SSL mode to use for the connection. Can be one of none \| require \| verify-ca \| verify-full | `string` | `"none"` | no |
| <a name="input_stack_name"></a> [stack\_name](#input\_stack\_name) | The name of our application | `string` | `"dblink"` | no |
| <a name="input_subnet_role"></a> [subnet\_role](#input\_subnet\_role) | A role used to filter out which subnets the RDS should reside, defaults to Role=compute | `string` | `"compute"` | no |
| <a name="input_target_backup_retention_period"></a> [target\_backup\_retention\_period](#input\_target\_backup\_retention\_period) | Retention of RDS backups | `string` | `"30"` | no |
| <a name="input_target_backup_window"></a> [target\_backup\_window](#input\_target\_backup\_window) | RDS backup window | `string` | `"14:00-17:00"` | no |
| <a name="input_target_db_name"></a> [target\_db\_name](#input\_target\_db\_name) | Name of the target database | `any` | n/a | yes |
| <a name="input_target_db_port"></a> [target\_db\_port](#input\_target\_db\_port) | The port the Application Server will access the database on | `number` | `5432` | no |
| <a name="input_target_engine"></a> [target\_engine](#input\_target\_engine) | Engine type, example values mysql, postgres | `string` | `"postgres"` | no |
| <a name="input_target_engine_version"></a> [target\_engine\_version](#input\_target\_engine\_version) | Engine version | `string` | `"9.3.14"` | no |
| <a name="input_target_instance_class"></a> [target\_instance\_class](#input\_target\_instance\_class) | Instance class | `string` | `"db.t2.micro"` | no |
| <a name="input_target_maintenance_window"></a> [target\_maintenance\_window](#input\_target\_maintenance\_window) | RDS maintenance window | `string` | `"Mon:00:00-Mon:03:00"` | no |
| <a name="input_target_password"></a> [target\_password](#input\_target\_password) | Password of the target database | `any` | n/a | yes |
| <a name="input_target_rds_is_multi_az"></a> [target\_rds\_is\_multi\_az](#input\_target\_rds\_is\_multi\_az) | Create backup database in separate availability zone | `string` | `"false"` | no |
| <a name="input_target_storage"></a> [target\_storage](#input\_target\_storage) | Storage size in GB | `string` | `"10"` | no |
| <a name="input_target_storage_encrypted"></a> [target\_storage\_encrypted](#input\_target\_storage\_encrypted) | Encrypt storage or leave unencrypted | `bool` | `false` | no |
| <a name="input_target_username"></a> [target\_username](#input\_target\_username) | Username to access the target database | `any` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR for the whole VPC | `string` | `"10.0.0.0/24"` | no |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | security group ids | `string` | `""` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
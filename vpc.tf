resource "aws_vpc" "WP_DB_vpc" {
  cidr_block = "${var.cidr_block}"
  tags       = "${var.tags}"
}

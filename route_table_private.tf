resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.WP_DB_vpc.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_GW.id}"
  }

  tags = "${var.tags}"
}

resource "aws_route_table_association" "a-priv" {
  subnet_id      = "${aws_subnet.private_subnet1.id}"
  route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "b-priv" {
  subnet_id      = "${aws_subnet.private_subnet2.id}"
  route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "c-priv" {
  subnet_id      = "${aws_subnet.private_subnet3.id}"
  route_table_id = "${aws_route_table.private.id}"
}

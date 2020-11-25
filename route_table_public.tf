resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.WP_DB_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags = "${var.tags}"
}

resource "aws_route_table_association" "a-pub" {
  subnet_id      = "${aws_subnet.pub_sub_101.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "b-pub" {
  subnet_id      = "${aws_subnet.pub_sub_102.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "c-pub" {
  subnet_id      = "${aws_subnet.pub_sub_103.id}"
  route_table_id = "${aws_route_table.public.id}"
}

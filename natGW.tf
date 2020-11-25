resource "aws_nat_gateway" "nat_GW" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.pub_sub_101.id}"
  tags          = "${var.tags}"
}

resource "aws_eip" "nat" {
  vpc  = true
  tags = "${var.tags}"
}

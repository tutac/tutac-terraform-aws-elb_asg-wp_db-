resource "aws_autoscaling_group" "DB" {
  name = "DB_ASG"

  vpc_zone_identifier = [
    "${aws_subnet.private_subnet1.id}",
    "${aws_subnet.private_subnet2.id}",
    "${aws_subnet.private_subnet3.id}",
  ]

  launch_template {
    id = "${aws_launch_template.DB.id}"
  }
  desired_capacity = 1
  min_size         = 1
  max_size         = 4

  lifecycle {
    create_before_destroy = true
  }
}

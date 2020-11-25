resource "aws_autoscaling_group" "WP" {
  name = "WP_ASG"
  launch_template {
    id = "${aws_launch_template.WP.id}"
  }

  vpc_zone_identifier = [
    "${aws_subnet.pub_sub_101.id}",
    "${aws_subnet.pub_sub_102.id}",
    "${aws_subnet.pub_sub_103.id}",
  ]

  desired_capacity = 1
  min_size         = 1
  max_size         = 4

  lifecycle {
    create_before_destroy = true
  }
}

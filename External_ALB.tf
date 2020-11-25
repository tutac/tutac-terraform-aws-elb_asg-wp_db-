resource "aws_elb" "External_ALB" {
  name = "ExternalALB"
  security_groups    = ["${aws_security_group.WP_SG.id}"]

  subnets = [
    "${aws_subnet.pub_sub_101.id}",
    "${aws_subnet.pub_sub_102.id}",
    "${aws_subnet.pub_sub_103.id}",
  ]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }


  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400
  tags = {
    Name = "foobar-terraform-elbs"
  }
}

resource "aws_autoscaling_attachment" "asg_attachment_bar" {
  autoscaling_group_name = "${aws_autoscaling_group.WP.id}"
  elb                    = "${aws_elb.External_ALB.id}"
}

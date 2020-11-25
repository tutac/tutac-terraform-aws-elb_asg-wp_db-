resource "aws_launch_template" "WP" {
  name_prefix          = "WP_template"
  image_id             = "${var.ami_id}"
  instance_type        = "${var.instance_type}"
  key_name             = "${aws_key_pair.Bastion.key_name}"
  vpc_security_group_ids = ["${aws_security_group.WP_SG.id}"]
  
}

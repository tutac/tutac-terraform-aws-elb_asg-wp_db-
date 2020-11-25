data "template_file" "DB_Template" {
  template = "${file("${path.module}/MariaDB.sh")}"
}
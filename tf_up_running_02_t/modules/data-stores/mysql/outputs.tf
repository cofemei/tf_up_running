output "address" {
  value = "${aws_instance.example.public_ip}"
}

output "port" {
  value = "${aws_instance.example.public_dns}"
}

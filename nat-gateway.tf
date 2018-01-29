resource "aws_eip" "nat" {
  vpc = true
}
resource "aws_nat_gateway" "natgw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.public_3.id}"

  tags {
    Name = "gw NAT"
    ManagedBy = "terraform"
  }

  depends_on = ["aws_internet_gateway.gateway"]
}
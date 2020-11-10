# Grab the Region
data "aws_region" "current" {}

# Create the Lightsail SSH Key Pair
resource "aws_lightsail_key_pair" "ls_key_pair" {
  name       = "${var.name}-key-pair"
  public_key = file(var.key_file_path)
}

# Create the Lightsail Instance
resource "aws_lightsail_instance" "instance" {
  name              = var.name
  availability_zone = var.az
  blueprint_id      = var.blueprint
  bundle_id         = var.bundle_id
  key_pair_name     = aws_lightsail_key_pair.ls_key_pair.name

  tags = {
    Name = var.name
  }
}

# Create the Static IP Resource
resource "aws_lightsail_static_ip" "ls_ip" {
  name = "${var.name}-IP-Address"
}

# Attach the IP
resource "aws_lightsail_static_ip_attachment" "ls_ip_attach" {
  static_ip_name = aws_lightsail_static_ip.ls_ip.id
  instance_name  = aws_lightsail_instance.instance.id
}

# Terraform for AWS Lightsail Instance with Elastic IP

## Creates
* Lightsail SSH Key Pair
* Lightsail Instance
* Lightsail Elastic IP
* Lightsail Elastic IP Association

## Running
```hcl
module "instance-01" {
  source        = "git::https://github.com/travisz/terraform-aws?ref=main"
  az            = "us-east-1a"
  blueprint     = "plesk_ubuntu_17_8_11_1"
  bundle_id     = "medium_2_0"
  key_file_path = "/path/to/your/key.pub"
  name          = "instance-name"
  region        = "us-east-1"
}
```

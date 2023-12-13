terraform {
    source = "git::https://github.com/sammadu/aws-vpc-terraform.git//modules/vpc?ref=v1.0.0"
}
include "root" {
    path = find_in_parent_folders()
}
inputs = {
    region_name = "us-west-1"
    public_az = ["us-west-1b", "us-west-1c"]
    private_az = ["us-west-1b", "us-west-1c"]
    environment = "qa"
}
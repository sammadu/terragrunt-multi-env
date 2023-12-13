terraform {
    source = "git::https://github.com/sammadu/aws-vpc-terraform.git//modules/vpc?ref=v1.0.0"
}

include "root" {
    path = find_in_parent_folders()
}


inputs = {
    region_name = "us-east-1"
    public_az = ["us-east-1a", "us-east-1b"]
    private_az = ["us-east-1a", "us-east-1b"]
}
# DEFINE ALL YOUR VARIABLES HERE

instance_type = "m7i-flex.large"
ami           = "ami-0b6d9d3d33ba97d99"   # Ubuntu 24.04
key_name      = "kub"                     # Replace with your key-name without .pem extension
volume_size   = 29
region_name   = "us-east-1"
server_name   = "JENKINS-SERVER"

# Note: 
# a. First create a pem-key manually from the AWS console
# b. Copy it in the same directory as your terraform code

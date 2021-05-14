resource "aws_instance" "default" {
ami = var.ami-id
iam_instance_profile = var.iam-instance-profile
instance_type = var.instance-type
key_name = var.key-pair
private_ip = var.private-ip
subnet_id = var.subnet-id
vpc_security_group_ids = var.vpc-security-group-ids

user_data = <<EOF
#!/bin/bash
cd /tmp
echo '#!/bin/bash
sudo yum upgrade -y
sudo yum install -y  httpd wget
sudo service httpd start' >> init.sh
chmod +x init.sh
/bin/su -c "/tmp/init.sh" - ec2-user
rm init.sh
EOF

tags = {

Name = var.name
}
}


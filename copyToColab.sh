#!/bin/bash

instance_dns="ec2-15-206-79-163.ap-south-1.compute.amazonaws.com"
username="ubuntu"
certificate_file="DA231o.pem"
file_name=$1
dest_name=$2
scp_command="scp -o StrictHostKeyChecking=no -i ${certificate_file} ${username}@${instance_dns}:/home/ubuntu/${file_name} ${dest_name}"
${scp_command}

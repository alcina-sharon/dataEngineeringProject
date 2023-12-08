#!/bin/bash

instance_dns="ec2-15-206-79-163.ap-south-1.compute.amazonaws.com"
username="ubuntu"
certificate_file="DA231o.pem"
ssh_prefix="ssh -t -o StrictHostKeyChecking=no -i ${certificate_file} ${username}@${instance_dns}"
hdfs_exec_path="/usr/local/hadoop/bin/"
command_string="${ssh_prefix} ${hdfs_exec_path}$1"
echo ${command_string}
${command_string}


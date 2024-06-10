#!/bin/bash
component=$1
environment=$2
dnf install ansible -y
pip3.9 install botocore boto3 # to install dependencies to connect AWS
ansible-pull -i localhost, -U https://github.com/shra1kr/expense-ansible-roles-1-tf.git main.yaml -e component=$component -e env=$environment

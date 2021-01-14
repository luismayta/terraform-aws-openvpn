<!-- DO NOT EDIT. THIS FILE IS GENERATED BY THE MAKEFILE. -->

# Terraform variables

This document gives an overview of variables used in the platform of the terraform-aws-openvpn.

## Requirements

| Name      | Version  |
| --------- | -------- |
| terraform | >=0.13.0 |

## Providers

| Name     | Version |
| -------- | ------- |
| aws      | n/a     |
| null     | n/a     |
| template | n/a     |

## Inputs

| Name              | Description       | Type     | Default         | Required |
| ----------------- | ----------------- | -------- | --------------- | :------: |
| admin_password    | admin password    | `string` | n/a             |   yes    |
| admin_user        | admin user        | `string` | `"openvpn"`     |    no    |
| https_cidr        | https cidr        | `string` | `"0.0.0.0/0"`   |    no    |
| https_port        | port https        | `number` | `443`           |    no    |
| instance_type     | type instance     | `string` | `"t2.micro"`    |    no    |
| private_key       | private key       | `string` | n/a             |   yes    |
| public_key        | public key        | `string` | n/a             |   yes    |
| region            | region of aws     | `string` | `"us-east-1"`   |    no    |
| ssh_cidr          | ssh cidr          | `string` | `"0.0.0.0/0"`   |    no    |
| ssh_port          | port ssh          | `number` | `22`            |    no    |
| ssh_user          | user ssh          | `string` | `"ubuntu"`      |    no    |
| subnet_cidr_block | subnet cidr block | `string` | `"10.0.0.0/16"` |    no    |
| tcp_cidr          | tcp cidr          | `string` | `"0.0.0.0/0"`   |    no    |
| tcp_port          | port tcp          | `number` | `943`           |    no    |
| udp_cidr          | udp cidr          | `string` | `"0.0.0.0/0"`   |    no    |
| udp_port          | udp tcp           | `number` | `1194`          |    no    |
| vpc_cidr_block    | vpc cidr block    | `string` | `"10.0.0.0/16"` |    no    |

## Outputs

| Name        | Description |
| ----------- | ----------- |
| instance    | n/a         |
| instance_ip | n/a         |
| private_key | n/a         |
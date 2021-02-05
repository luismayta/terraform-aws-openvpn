<!--


  ** DO NOT EDIT THIS FILE
  **
  ** 1) Make all changes to `README.yaml`
  ** 2) Run`make readme` to rebuild this file.
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **


  -->

# terraform-aws-openvpn

[![Build Status](https://travis-ci.org/hadenlabs/terraform-aws-openvpn.svg?branch=main)](https://travis-ci.org/hadenlabs/terraform-aws-openvpn) [![Latest Release](https://img.shields.io/github/release/hadenlabs/terraform-aws-openvpn.svg)](https://travis-ci.org/hadenlabs/terraform-aws-openvpn/releases)

Terraform module to provision an openvpn instance.

---

This project is part of our comprehensive [hadenlabs](https://hadenlabs.com) modules of terraform.

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

```hcl
  module "main" {
    source  = "hadenlabs/openvpn/aws"
    version = "0.1.1"

    providers = {
      aws = aws
      template = template
      local = local
    }

    public_key = local.auth_public_key
    private_key = local.auth_private_key
    admin_user = "slovacus"
    storage_path = "~/openvpn"

  }
```

Full working example can be found in [example](./example) folder.

 <!-- DO NOT EDIT. THIS FILE IS GENERATED BY THE MAKEFILE. -->

# Terraform variables

This document gives an overview of variables used in the platform of the terraform-aws-openvpn.

## Requirements

| Name      | Version |
| --------- | ------- |
| terraform | >= 0.13 |
| aws       | >=3.2.0 |
| local     | >=1.3.0 |
| null      | >=0.1.0 |
| template  | >=1.0.0 |

## Providers

| Name     | Version |
| -------- | ------- |
| aws      | >=3.2.0 |
| null     | >=0.1.0 |
| template | >=1.0.0 |

## Inputs

| Name              | Description                | Type     | Default         | Required |
| ----------------- | -------------------------- | -------- | --------------- | :------: |
| private_key       | private key                | `string` | n/a             |   yes    |
| public_key        | public key                 | `string` | n/a             |   yes    |
| admin_user        | admin user                 | `string` | `"openvpn"`     |    no    |
| https_cidr        | https cidr                 | `string` | `"0.0.0.0/0"`   |    no    |
| https_port        | port https                 | `number` | `443`           |    no    |
| instance_type     | type instance              | `string` | `"t2.micro"`    |    no    |
| ssh_cidr          | ssh cidr                   | `string` | `"0.0.0.0/0"`   |    no    |
| ssh_port          | port ssh                   | `number` | `22`            |    no    |
| ssh_user          | user ssh                   | `string` | `"ubuntu"`      |    no    |
| storage_path      | storage path keys to local | `string` | `"~/openvpn"`   |    no    |
| subnet_cidr_block | subnet cidr block          | `string` | `"10.0.0.0/16"` |    no    |
| tcp_cidr          | tcp cidr                   | `string` | `"0.0.0.0/0"`   |    no    |
| tcp_port          | port tcp                   | `number` | `943`           |    no    |
| udp_cidr          | udp cidr                   | `string` | `"0.0.0.0/0"`   |    no    |
| udp_port          | udp tcp                    | `number` | `1194`          |    no    |
| vpc_cidr_block    | vpc cidr block             | `string` | `"10.0.0.0/16"` |    no    |

## Outputs

| Name        | Description                               |
| ----------- | ----------------------------------------- |
| instance    | return instance openvpn                   |
| instance_ip | return instance openvpn elastic ip public |
| private_key | return filepath privatekey                |

## Help

**Got a question?**

File a GitHub [issue](https://github.com/hadenlabs/terraform-aws-openvpn/issues), send us an [email][email] or join our [Slack Community][slack].

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/hadenlabs/terraform-aws-openvpn/issues) to report any bugs or file feature requests.

### Developing

If you are interested in being a contributor and want to get involved in developing this project or [help out](https://hadenlabs.com) with our other projects, we would love to hear from you! Shoot us an [email](mailto:support@hadenlabs.com).

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

1.  **Fork** the repo on GitHub
2.  **Clone** the project to your own machine
3.  **Commit** changes to your own branch
4.  **Push** your work back up to your fork
5.  Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to rebase the latest changes from "upstream" before making a pull request!

### Versioning

Releases are managed using github release feature. We use \[Semantic Versioning\](<http://semver.org>) for all the releases. Every change made to the code base will be referred to in the release notes (except for cleanups and refactorings).

## Copyright

Copyright © 2018-2021 [Hadenlabs](https://hadenlabs.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## About

This project is maintained and funded by [Hadenlabs][https://hadenlabs.com]. Like it? Please let us know at <support@hadenlabs.com>

### Contributors

| [![Luis Mayta][luismayta_avatar]][luismayta_homepage]<br/>[Luis Mayta][luismayta_homepage] |
| ------------------------------------------------------------------------------------------ |

[luismayta_homepage]: https://github.com/luismayta
[luismayta_avatar]: https://github.com/luismayta.png?size=150

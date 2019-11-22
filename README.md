# symmetrical-spork

Deploy service with AWS Fargate using terraform

## Directory layout

    .
    ├── scripts                            # scripts to run terraform & tests
    ├── terraform
      - aws                                # Terraform AWS infrastructure
    ├── tests                              # Infrastructure tests
    ├── Makefile                           # Set of tasks to execute
    └── README.md                          # Documentation

## Proposed Infrastructure Architecture

![design](design.jpg "Architecture")

* AWS Fargate
* AWS Application Load Balancer

The application load balancer should have an `/service` endpoint and `/__healthcheck__` health check endpoint.

If something is missing, feel free adding it to a solution.

## Objectives

The task objectives were as follows:

* Create infrastructure-as-code as per proposed Architecture
* Test Infrastructure (you can choose one or more test frameworks)
	* [Terraform BDD Testing](https://github.com/eerkunt/terraform-compliance)
	* [Terraform Unit Testing](https://github.com/bsnape/rspec-terraform)
	* [Terraform Ultimate Testing](https://github.com/bsnape/rspec-terraform)
* `Makefile` has all the commands requred to run/test
* Explain how to run and test in `README.md`

## Deploy

The Terraform scripts has single file variables.tf to define all the variables used in the scripts. Only this file needs to be changed in order to make any configuration changes.

To Deploy the cluster with terraform, following are required.

Terraform v0.12.16 (Latest at this time)

# AWS access key in .credentials file.
cat .credentials                                                           
[default]
aws_access_key_id = <Add access key id with proper access.>
aws_secret_access_key = <Secret Access key>

# Provide path of .credentials file in main_indy.tf file.
shared_credentials_file = "<Provide full path to the .credentials file.>"

# Plan the changes and save the state.
terraform plan -out infra.state

# Deploy the infrastructure.
terraform apply



## Test the whole setup

TODO: Document how to test the setup

## Note

Please do not make pull requests. Fork/Clone the repo instead and work on it.

There is no need to deploy infrastructure to AWS. Just make sure it fully valid terraform infrastructure-as-code setup and it has sufficient level of tests.

a simple script to deploy multiple ec2 instances in AWS using terraform.

steps:

Integrate aws with terraform on your terminal using AWS-configure.

        #Create a repo:
        mkdir ec2-launch

        cd ec2-launch

        #create your provider config file for terraform.
        touch provider.tf

        aws configure
        #fill in your access key, secret key and default aws region.

        #to initialize terraform into the repo
        terraform init

In your provider.tf, use the aws provider that can be found in the terraform official documentation.

            provider "aws" {
            region = "us-east-1"
            }

next is to configure the resource file that contains info of the ec2 instance we want to create. create a file named main.tf and add the resource config.

        resource "aws_instance" "my-ec2" {
            ami = "ami-0fe630eb857a6ec83"
            instance_type = "t2.micro"
            count = 20
            tags = {
                   name = "prod-machines"
            }
        }

You can check the dashboard to see if your ec2 instances are running.

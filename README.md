# design-provision-monitor-aws

## Rubric

#### Design Infrastructure Solution

- [x] ***Develop a schematic for the application development project*** 

The infrastructure includes:

Infrastructure in the following regions: us-east-1
Users and Client machines
One VPC
Two Availability Zones
Four Subnets (2 Public, 2 Private)
A NAT Gateway
A CloudFront distribution with an S3 Bucket
Web servers in the Public Subnets
Application Servers in the Private Subnets
DB Servers in the Private Subnets
Web Servers Load Balanced and Autoscaled
Application Servers Load Balanced and Autoscaled
A Master DB in AZ 1 with a read replica in AZ2
All services in the diagram include a label to indicate the type of service and any necessary parameters (e.g. size, location)

Visible lines represent all network connections


- [x] ***Develop a schematic for a Serverless AWS infrastructure application development project*** The infrastructure includes:

A user and client machine
AWS Route 53
A CloudFront Distribution
AWS Cognito
AWS Lambda
API Gateway
DynamoDB
S3 Storage
All services in the diagram include a label to indicate the type of service and any necessary parameters (e.g. size, location)

Visible lines represent all network connections

#### Estimate Costs


- [x] ***Estimate the monthly cost of the planned infrastructure for Diagram 1*** The monthly cost is between $8,000-10,000 using the AWS Pricing Calculator

[Estimate](https://calculator.aws/#/estimate?id=4f4762e2238876c5b20678f5b9b9bfb57f6957e6)

10.000 GB => 1000 photos aprox

- [x] ***Modify the infrastructure to reduce the monthly cost*** 

The infrastructure includes all required services to run properly

The monthly cost is $6,500 or below using the AWS Pricing Calculator

A rationale is provided to explain which services were changed or removed

=>

As it can be seen that more than the 50% of the cost is beacuse of the size of the db and ec2 instances. So it is proposed [this budget](https://calculator.aws/#/estimate?id=74d82b03d412ed04fd371fd27694ae7e7d1a2e84) with this two changes, so to reduce costs by affecting the least the service quality: the first is to reduce the size of the instance to adjust to the budget, and also, the second, to choose booked isntance for, for example, a year.


- [x] ***Modify the infrastructure to increase performance and redundancy*** 

Infrastructure has been re-designed for increased performance and redundancy

The monthly cost is between $18,000-20,000 using the AWS Pricing Calculator

A rationale is provided to explain which services were changed or removed

=>

It is used the extra budget to pick a double isntance of every service (db, application server and web server), and also multiply by 10 the s3 size. [Budget](https://calculator.aws/#/estimate?id=24218eec5c2455be1e4541a7259284564cd6c0c0)

#### Configure AWS Monitoring and Billing


- [x] ***Configure a CloudWatch Billing Alarm*** A billing alarm is configured to send an alarm to a valid email address when a $5 billing threshold is met
The billing alarm has a status of GREEN OK after a refresh period of 5-10 minutes

- [x] ***Create and Configure IAM Users and Groups*** 

A group named CloudTrailAdmins has been created and has the two CloudTrail privileges.
A group named Reviewers has been created and has the Billing privilege.
A user named CloudTrail is created and assigned to the CloudTrailAdmins group.
A user named Accountant is created and assigned to the Reviewers group.
Both users have AWS Console access

- [x] ***Update AWS password policy*** 

Password policy meets or exceeds these requirements:

Minimum password length = 8
Require at least one uppercase letter
Require at least one lowercase letter
Require at least one number
Require at least one non-alphanumeric character.

#### Infrastructure as Code with Terraform


- [x] ***Provision AWS Infrastructure as Code with Terraform*** 

AWS Console EC2 screenshot Terraform_1_1 shows:

4 AWS t2.micro EC2 instances named Udacity T2
2 m4.large EC2 instances named "Udacity M4"
Updated AWS Console EC2 screenshot Terraform_1_2 shows:

4 AWS t2.micro EC2 instances named "Udacity T2"

- [x] ***Deploy an AWS Lambda function using Terraform*** 

Infrastructure includes:

A lambda.py file
A main.tf file
An outputs.tf file
A variables.tf file
AWS CloudWatch log screenshot Terraform_2_3 shows the CloudWatch log entry that correlates to the lambda function

I inspired to write the code from the hashicorp and aws tutorials.

- [x] ***Delete and Destroy AWS Infrastructure Resources with Terraform*** 

All infrastructure provisioned with Terraform is deleted/ destroyed using the *.tf configuration files


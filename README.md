# Totara-Cloud-Engineer-Assignment

Please find the answers of the Question A, B and C in their respective folders.

Question A

Totara web application required to execute CLI script as a scheduler task. This scheduler task executes recurring N minutes.
Assume that you have the `src` folder in the given location and the PHP CLI script located in “src/cli/cron.php”.This CLI script may need to be executed in high availability and highly scalable environment.


1.	What's your approach to executing the CLI script in a high availability and scalability scenario?
2.	How do you develop a Dockerfile to execute the CLI script? ( Assume that you can use `php:cli` as the base image)
3.	How do you automate the above docker container to run each minute?

Question B

Totara infrastructure team needs to spin up a Jenkins instance on the AWS cloud infrastructure to run cloud CI/CD pipelines.

1.	What's your approach to spinning up a Jenkins instance on AWS cloud infrastructure?
2.	If you decide to use terraform as IaC, How do you develop terraform modules to spin up the EC2 instance for hosting the Jenkins instance?
3.	How do you improve your terraform module to grant SSH access and HTTP access?
4.	What's your approach to automating Jenkins and relevant dependencies installation on the EC2 instance?

Question C

Totara web application released as a docker image, and it requires nginx,pgsql as dependency containers.
1.	How do you deploy the above three containers in the Kubernetes cluster?
2.	If we need to scale the nginx container based on demand how do you achieve it?
3.	How you are going to keep Pgsql DB credentials in k8 cluster?
4.	How do you upgrade the totara application with zero downtime?

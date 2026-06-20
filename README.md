# Amazon Prime Clone Deployment Project

## Project Overview
This project demonstrates deploying an Amazon Prime clone using a set of DevOps tools and practices. The primary tools include:

- **Terraform**: Infrastructure as Code (IaC) tool to create AWS infrastructure such as EC2 instances and EKS clusters.
- **GitHub**: Source code management.
- **Jenkins**: CI/CD automation tool.
- **NPM**: Build tool for NodeJS.
- **Docker**: Containerization tool to create images.
- **AWS ECR**: Repository to store Docker images.
- **AWS EKS**: Container management platform.

## Pre-requisites
1. **AWS Account**: Ensure you have an AWS account.
2. **AWS CLI**: Install AWS CLI on your local machine.
3. **VS Code (Optional)**: Download and install VS Code as a code editor.
4. **Install Terraform in Windows**: Download and install Terraform in Windows

## Configuration
### AWS Setup
1. **IAM User**: Create an IAM user and generate the access and secret keys to configure your machine with AWS.
2. **Key Pair**: Create a key pair named `key` for accessing your EC2 instances.

## Infrastructure Setup Using Terraform
1. **Clone the Repository** (Open Command Prompt & run below):
   ```bash
   git clone https://github.com/VireshDhuri01/FinalProj.git
   cd FinalProj
   code .   # this command will open VS code in backend
   ```
2. **Initialize and Apply Terraform**:
   - Open `terraform_code/ec2_server/main.tf` in VS Code.
   - Run the following commands:
     ```bash
     aws configure
     terraform init
     terraform apply --auto-approve
     ```

This will create the EC2 instance, security groups, and install necessary tools like Jenkins, Docker, SonarQube, etc.

## Jenkins Configuration
1. **Add Jenkins Credentials**:
   - Add the SonarQube token, AWS access key, and secret key in `Manage Jenkins → Credentials → System → Global credentials`.
2. **Install Required Plugins**:
   - Install plugins such as NodeJS, Docker, and under `Manage Jenkins → Plugins`.

3. **Global Tool Configuration**:
   - Set up tools like JDK 21, NodeJS, and Docker under `Manage Jenkins → Global Tool Configuration`.

## Pipeline Overview
### Pipeline Stages
1. **Git Checkout**: Clones the source code from GitHub.
2. **Install NPM Dependencies**: Installs NodeJS packages.
3. **Docker Build**: Builds a Docker image for the project.
4. **Push to AWS ECR**: Tags and pushes the Docker image to ECR.
5. **Image Cleanup**: Deletes images from the Jenkins server to save space.

### Running Jenkins Pipeline
Create and run the build pipeline in Jenkins. The pipeline will build, analyze, and push the project Docker image to ECR.
Further Use another pipeline to deploy Image from ECR to EKS and further ready to use.

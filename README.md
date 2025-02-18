Node.js CI/CD Pipeline with Jenkins, Docker, Ansible, Terraform.

I have implemented a CI/CD pipeline using Jenkins, GitHub, Docker, Ansible, Terraform to automate the deployment of a Node.js application.
Fully automated pipeline with end-to-end deployment.
Infrastructure-as-Code (IaC) using Terraform for dynamic provisioning.
Ansible Vault for Secure Configurations.

**Project Overview**
This project implements a **CI/CD pipeline** for a Node.js application using:
- **GitHub** (Source code repository)
- **Jenkins** (CI/CD automation)
- **Docker** (Containerization)
- **Ansible** (Configuration management)
- **Terraform** (Infrastructure provisioning)

 **Project Workflow**
1. **Developer pushes code to GitHub** → Webhook triggers Jenkins.
2. **Jenkins Pipeline:**
   - Pulls latest code.
   - Builds and tags a Docker image.
   - Pushes the image to Docker Hub.
3. **Ansible & Terraform:**
   - Terraform provisions AWS infrastructure.
   - Ansible deploys the application .

 **Prerequisites**
Ensure you have the following installed:
- Jenkins with required plugins
- Docker & Docker Hub account
- Ansible & Terraform configured


 **How to Set Up the Project**
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/ReenaSo16/nodejs.git
   cd nodejs

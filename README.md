# Vulcan DevOps Project - Ofer Peretz

## Overview
This project demonstrates:
- Using Terraform to create IAM roles and policies.
- Developing and containerizing a Flask web application.
- Deploying the app to Kubernetes using Helm.
- Automating the deployment with CI/CD.

## Manual setup and test instructions
### Terraform
1. Navigate to `terraform/` directory.
2. Run `terraform init`, `terraform plan`, and `terraform apply`.

### Flask Application
1. Navigate to `flask-app/` directory.
2. Run `docker build -t flask-app .` to build Docker image.
3. Run docker run -it flask-app
4. Open browser url at: localhost:5000/host

### Helm Deployment
1. Navigate to `helm-chart/` directory.
2. Run `helm install flask-app . -n ofer-devops-test` 

### CI/CD Pipeline
- GitLab CI comfiguration located in `cicd/` directory
- github action is confugred in the .github/workflows/vulcan-test.yaml
 

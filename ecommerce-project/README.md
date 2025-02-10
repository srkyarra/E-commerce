
# E-Commerce Application

## Overview
This is a modular e-commerce application built with Spring Boot and deployed on AWS. It includes the following services:
- Catalog Service
- Cart Service

## Deployment
1. Configure AWS RDS for the database.
2. Use S3 for static content storage.
3. Deploy services to EC2 instances using the provided scripts.
4. Configure Elastic Load Balancer for traffic distribution.

## Scripts
- `build.sh`: Builds the Java project.
- `deploy.sh`: Deploys the application to EC2.

## CI/CD
A GitHub Actions workflow is provided for continuous integration and deployment.

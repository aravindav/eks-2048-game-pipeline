# EKS 2048 Game Pipeline

This project deploys the 2048 game using a containerized NGINX image on AWS EKS, managed via an advanced Azure DevOps pipeline.

## Components

- Docker image
- Helm chart
- Azure DevOps pipeline
- AWS EKS cluster

## Pipeline stages

- Build Docker image
- Scan image
- Push to ECR
- Deploy via Helm
- Post-deploy verification

## Quick Start

```bash
docker build -t game-2048 .
docker run -p 8080:80 game-2048
```

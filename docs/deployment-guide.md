# Azure CI/CD Deployment Guide

## Pipeline Stages
1. Build: Docker image creation
2. Test: Unit and integration tests
3. Security Scan: Trivy vulnerability assessment
4. Push: Container to ACR
5. Deploy: Azure App Service
6. Validate: Health checks

## Secrets Management
All secrets stored in Azure Key Vault.
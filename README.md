# Microservices AWS Kubernetes Project

This project sets up a **microservices architecture** on AWS EKS (Elastic Kubernetes Service), including a **PostgreSQL database** and a **Python analytics service**. It provides configurations and deployment files for both **cloud** and **local environments**.

## Project Structure

- **analytics/**: Python analytics service  
  - `app.py`: Main application logic  
  - `config.py`: Configuration settings  
  - `requirements.txt`: Python dependencies

- **db/**: SQL scripts for PostgreSQL  
  - `1_create_tables.sql`: Script to create database tables  
  - `2_seed_users.sql`: Script to seed user data  
  - `3_seed_tokens.sql`: Script to seed token data  

- **deployment/**: Kubernetes YAML files for cloud deployment  
  - `configmap.yaml`: Configuration of environment variables  
  - `coworking.yaml`: Deployment for the Python analytics service  
  - `postgresql-deployment.yaml`: PostgreSQL deployment  
  - `postgresql-service.yaml`: PostgreSQL service definition  
  - `pv.yaml`: Persistent Volume configuration  
  - `pvc.yaml`: Persistent Volume Claim configuration  

- **deployment-local/**: Kubernetes configurations for local deployment  

- **screen/**: Screenshot

# 🚀 Resilient DevSecOps Pipeline for Reddit Clone

A production-grade DevSecOps pipeline integrating CI/CD, security scanning, observability, and GitOps — deployed on Kubernetes via AWS EKS, built for speed, reliability, and compliance.

<img src="https://github.com/atharva21-stack/secure-devsecops-pipeline/blob/main/assets/arch.png" width="700"/>

---

## 🧭 Project Overview

This project demonstrates a full-stack DevSecOps implementation for deploying a Reddit-style application using:

- **Jenkins** for CI
- **ArgoCD** for GitOps-style Continuous Delivery
- **Prometheus, Grafana, Kibana (EFK)** for Monitoring and Logging
- **Terraform** for Infrastructure as Code
- **Kubernetes (EKS)** as the core orchestration platform

> The goal: Deliver secure, scalable, observable deployments — ready for production.

---

## 🔧 Tech Stack

| Category         | Tools Used                                        |
|------------------|--------------------------------------------------|
| Infrastructure   | AWS EKS, Terraform, Helm                         |
| CI/CD            | Jenkins, ArgoCD                                  |
| Security         | SonarQube, OWASP Dependency Check, Trivy, TfSec |
| Monitoring       | Prometheus, Grafana                              |
| Logging          | Elasticsearch, Fluentd, Kibana (EFK Stack)       |
| Containerization | Docker, Kubernetes                               |

---

## 🛠️ DevSecOps Workflow

1. **Provision Infra** with Terraform (multi-AZ, NATs, public/private subnets)
2. **Deploy Jenkins** on EKS for Continuous Integration
3. **Run CI Pipeline**:  
   - Code Pull → SAST → Dependency Scan → Image Build  
   - Secret Scan → IaC Scan → Push to Docker Hub
4. **Trigger CD via ArgoCD** for K8s deployments (GitOps)
5. **Monitoring**: Metrics + dashboards via Prometheus & Grafana
6. **Logging**: Structured logs via Fluentd → Elasticsearch → Kibana

---

## 🔐 Security Highlights

- Trivy image scanning in pipeline
- SonarQube for static code analysis
- OWASP check for third-party lib vulnerabilities
- Secrets detection using truffleHog
- RBAC-based Kubernetes access control
- TLS/SSL secured logging and API connections

---

## 📊 Observability

- **Prometheus** tracks node & pod metrics; integrates with **AlertManager**
- **Grafana Dashboards**:
  - Pod usage, node health, traffic I/O, cluster status
- **Kibana Dashboards**:
  - Ingested logs, error tracing, audit events
- Alerts integrated with Slack and email for quick response

---

## 📦 Key Features

- Jenkins agents provisioned dynamically (scalable CI)
- Multi-NAT gateway setup for high availability
- Mix of **On-Demand + Spot Instances** to optimize cost
- Horizontal Pod Autoscaler + Cluster Autoscaler for resource elasticity
- RBAC + K8s Network Policies for pod-level security
- Fluentd log enrichment, buffering, retry and overflow handling
- Persistent volumes for logs and state storage

---

## 🔄 Helm & GitOps

- Helm used for templating and deploying Prometheus/Grafana
- ArgoCD syncs manifests from GitHub → applies to live clusters
- Rollbacks and version control handled through Git commits

---

## 🔗 Source Repositories

- 🌱 [Terraform Infra Setup](https://github.com/TanishkaMarrott/AWS-EKS-TF/tree/main)  
- 📦 [Reddit Clone App Code](https://github.com/TanishkaMarrott/Reddit-Clone-App)  
- 🧩 [Kubernetes Manifests](https://github.com/TanishkaMarrott/Reddit-Clone-K8s-Manifests)  
- 📈 [EFK Stack Setup](https://github.com/TanishkaMarrott/EFK-Stack)  

---

##  Acknowledgments

- Inspired by AWS Well-Architected Framework

---

## 💡 Final Thoughts

This project aims to showcase how DevSecOps, when deeply integrated, can lead to a robust, secure, and high-performing deployment workflow. By combining automation, compliance, and visibility, we can bridge the gap between development and operations — and do it securely.


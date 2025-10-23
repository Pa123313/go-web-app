End-to-End DevOps Project on Golang Web Application

Overview

This project demonstrates an End-to-End DevOps implementation for a Golang web application, covering everything from containerization to continuous delivery using modern DevOps tools and best practices.

The goal is to automate the entire lifecycle — from code commit to production deployment — using CI/CD pipelines, Kubernetes, Helm, and Argo CD.

Tools Used

Go (Golang)
Git & GitHub
GitHub Actions, Argo CD        
Docker (Multi-stage builds)
Kubernetes
Helm
Ingress Controller
Local / Cloud Kubernetes Cluster
Argo CD UI
Custom domain mapping for ingress

🏗️ Project Architecture

Developer → GitHub → GitHub Actions → Docker Image → Helm Chart → Argo CD → Kubernetes Cluster → Application

Workflow Explanation:

Code Commit: Push changes to GitHub repository.
CI Pipeline: GitHub Actions automatically triggers:
* Code quality checks.
* Docker image build using multi-stage Dockerfile.
* Push image to container registry.
* Update Helm chart with the new image tag.

CD Pipeline: Argo CD detects changes and syncs automatically with the Kubernetes cluster.

Deployment: Updated version is deployed seamlessly to the cluster.

Access: Application is exposed via Ingress controller and DNS mapping.

🐳 Containerization

Implemented multi-stage Docker build for smaller, efficient images.

Ensures build and runtime separation for better security and performance.

⚙️ Continuous Integration (GitHub Actions)

Automated pipeline triggers on each push.

<img width="1338" height="602" alt="github-actions-ci png" src="https://github.com/user-attachments/assets/82a7bc5c-5a69-47dd-a70f-d35429803e1d" />

Jobs:

✅ Build & Lint

✅ Code Quality Check

✅ Push Docker Image

✅ Update Helm Chart Tag

🚀 Continuous Delivery (Argo CD)

Deployed via Argo CD for GitOps-based continuous delivery.

Automatic synchronization between GitHub and Kubernetes cluster.

Ensures production-grade deployment visibility and rollback capabilities.

<img width="1137" height="635" alt="argo-cd-dashboard png" src="https://github.com/user-attachments/assets/a47ac477-9f38-4a63-b0a4-19803467edf9" />

☸️ Kubernetes & Helm

Kubernetes manifests and Helm charts created for:

* Deployment

* Service

* Ingress

Supports multiple environments (dev, staging, prod).

🏁 Outcome

✅ Fully automated pipeline from code to production
✅ Reproducible and scalable Kubernetes deployment
✅ Demonstrated proficiency in modern DevOps tools
✅ Showcases skills in real-world end-to-end DevOps lifecycle

👨‍💻 Author

Pavithra A S
💼 DevOps Engineer
📧 Pavithraannur1234@gmail.com



# terraform
# 🚀 Project 1: Create a GCP VM Using Terraform

---

## 📚 Overview

This project demonstrates how to automate the provisioning of a **Google Compute Engine (GCE) Virtual Machine** on **Google Cloud Platform (GCP)** using **Terraform**.

It covers complete **Infrastructure as Code (IaC)** practice — from authentication setup to Terraform resource creation to GitHub version control.

---

## 🛠️ Tools and Technologies Used

- Terraform v1.x
- Google Cloud Platform (GCP)
- Google Compute Engine (GCE)
- Git
- GitHub
- Linux (Ubuntu/Debian-based VM)

---

## 📋 Step-by-Step Full Setup

---

### 1️⃣ GCP Setup

- Created a **GCP Project**.
- Enabled **Compute Engine API**.
- Created a **Service Account** with two roles:
  - **Compute Instance Admin (v1)**
  - **Service Account User**
- Downloaded the **Service Account Key** (`.json` file).
- Created a **VM** on GCP:
  - 2 vCPUs
  - 4 GB Memory
  - 50 GB Disk

---

### 2️⃣ VM Setup (GCP VM)

- SSH into the VM instance.
- Installed **Terraform** manually inside the VM:

```bash
sudo apt update
sudo apt install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install terraform
terraform -version

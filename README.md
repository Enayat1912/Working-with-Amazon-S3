# AWS S3 Object Storage Project

This project demonstrates how to **create, configure, and interact with an Amazon S3 bucket** using two approaches:
1. **Infrastructure as Code (IaC)** via Terraform.
2. **Programmatic interaction** using Python (`boto3`) inside a Jupyter Notebook.

The workflow includes:
- Creating an S3 bucket and IAM role with Terraform.
- Uploading structured (CSV), semi-structured (JSON), and unstructured (image) data to S3.
- Querying, downloading, and managing files via Python SDK.
- Configuring bucket access, public policies, and object versioning.


## 🗂️ Project Overview

This project is split into two main components:


| **Terraform Setup** | Provisions the S3 bucket, IAM role, and policies for access. 
| **Python Notebook** | Uploads, downloads, and queries data in the S3 bucket programmatically. 



## Requirements

### 1. Software
- **Python 3.9+**
- **Terraform 1.5+**
- **AWS CLI v2**
- **Jupyter Notebook** (or VS Code with Jupyter extension)
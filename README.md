📦 FastAPI Deploy Pipeline
==========================

**Description:** This project is a production-ready, containerized **FastAPI** application. It is fully automated for continuous integration and deployment using **GitHub Actions**, **Docker**, and **Terraform** on **AWS EC2**. The pipeline integrates automated unit and API testing, failure recovery via rollback scripts, and structured manual QA validation processes.

* * *

🔄 Deployment Workflow
----------------------

1.  Code is committed and pushed to the **GitHub** repository.
2.  **CI/CD pipeline** is triggered via GitHub Actions:
    *   Execute unit and integration tests
    *   Build Docker image
    *   Push image to DockerHub
    *   Provision AWS EC2 resources via **Terraform**
    *   Deploy Docker container to provisioned infrastructure
3.  On deployment failure:
    *   `rollback.sh` is invoked to restore the previous stable version
4.  Post-deployment QA:
    *   Execution of `postman_collection.json`
    *   Validation against `manual_test_cases.md`

* * *

📌 Technology Stack
-------------------

*   **FastAPI** – Asynchronous Python web framework
*   **GitHub Actions** – Continuous integration and delivery (CI/CD)
*   **Docker** – Containerization and deployment standardization
*   **Terraform** – Infrastructure provisioning and management
*   **AWS EC2** – Scalable compute environment
*   **Postman** – API validation and test automation

* * *

✅ Testing and Quality Assurance
-------------------------------

*   `test_main.py` – Automated unit and API tests executed in CI
*   `manual_test_cases.md` – Structured manual QA verification
*   `postman_collection.json` – Postman test suite for endpoint validation

* * *

🔁 Rollback Mechanism
---------------------

Deployment failures are handled through an automated rollback process using `rollback.sh`, restoring the last known stable container state to ensure high availability and system integrity.
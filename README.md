# cloud-starter-templates
In this repository I intend to provide full implementation of application deployment on cloud. The template includes a small application, continuous integration and deployment using github actions.

- CI/CD - Github Actions
- Container Registry - Docker free tier
- CodeQL - code scanning
- Terraform - IaC

## This example demonstrates
- CI with github action
- CD with Manual and Automatic Trigger
- Deployment into multiple region
- Deployment into multiple environments.
- Infrastructure Automation(Create and Destroy)

## Implementation Details

- A sample spring boot app deployed on Azure App Services
- Github Action simple continuous integration workflow for packaging app as docker image.
- Auto Deploy for commits into `development` branch.
- Implements deployment into azure app service(embedded java server)
- Utilize terraform to create and update resources on azure.
- CD deployment into `dev` or `prod` environments.



# Setup and publishing

## Requirements

- Git and a GitHub account
- Windows 10/11 + PowerShell 5.1 or PowerShell 7 for Windows projects
- Linux/macOS or WSL with Bash for Linux checks
- Optional: Windows Server domain lab for AD examples
- Optional: Azure/Intune tenant and appropriate permissions for endpoint labs
- Optional: Terraform 1.5+ and AWS CLI configured with lab credentials for AWS

## Publish on GitHub

1. Download and unzip this portfolio.
2. Review README and scripts, replacing `YOUR_USERNAME` with your GitHub username.
3. In GitHub, create an **empty public repository** named `it-support-github-portfolio` (do not initialize with README).
4. In a terminal in the unzipped folder:

```bash
git init
git add .
git commit -m "Add IT support portfolio lab projects"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/it-support-github-portfolio.git
git push -u origin main
```

5. On GitHub, pin the repository to your profile and add its link to LinkedIn Featured.

## Validate safely

- PowerShell: open each `.ps1` file, inspect it, then run in a **personal lab**.
- Bash: `bash -n linux-admin-scripts/scripts/health-check.sh`; then `bash linux-admin-scripts/scripts/health-check.sh`.
- Terraform: `terraform fmt -check`, `terraform init`, `terraform validate`, then optionally `terraform plan` and `terraform apply`. Clean up with `terraform destroy`.

## Important

Some modules are **lab templates/runbooks**, not direct integrations with a real enterprise tenant. No workplace access or secrets are included.

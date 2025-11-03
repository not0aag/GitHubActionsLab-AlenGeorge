GitHub Actions Lab 4 - Automated Workflows

Student name: Alen George
Student ID: 991716469
Repository: GitHubActionsLab-AlenGeorge

Overview
This repo contains three GitHub Actions workflows that demonstrate:

- job dependencies (sequential jobs)
- environment variables and secrets
- multi-platform jobs running in parallel

Workflows

1. Job dependencies (dependent-jobs.yml)

- Trigger: push to main
- Jobs: build -> test -> deploy, each waits for the previous one (uses "needs")
- Behavior: if one fails, later jobs do not run
- Purpose: show a simple ordered CI/CD pipeline

2. Environment variables and secrets (env-and-secrets.yml)

- Trigger: workflow_dispatch (manual)
- Env scopes:
  - workflow level (example: AWS_REGION=us-east-1)
  - job level (example: DEPLOYMENT_NAME)
  - step level (example: DEPLOYMENT_STAGE)
- Secrets used: AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY (masked as \*\*\* in logs)
- Purpose: show variable scope and safe secret handling

3. Multi-platform testing (multi-platform.yml)

- Trigger: pull_request
- Runs three independent jobs in parallel on ubuntu-latest, windows-latest, and macos-latest
- Each job prints system info and writes a small test file
- Purpose: verify behavior across operating systems without waiting sequentially

Key concepts

- needs: lets one job depend on another so they run in order
- runs-on: selects the runner OS (ubuntu-latest, windows-latest, macos-latest)
- env scope: variables defined at workflow, job, or step scope are only visible within that scope and below
- secrets: stored in repository settings; automatically masked in logs; do not echo them

Testing results

- Workflow 1 ran on push and executed build, then test, then deploy in order
- Workflow 2 ran when manually triggered; env visibility behaved as expected; secrets were masked
- Workflow 3 ran on a pull request; all three OS jobs executed in parallel and succeeded

Repository structure
GitHubActionsLab-AlenGeorge/
.github/
workflows/
dependent-jobs.yml
env-and-secrets.yml
multi-platform.yml
README.md
(test files used during runs)

Learning outcomes

- Created and ran GitHub Actions workflows
- Used job dependencies to control order
- Scoped environment variables correctly
- Handled secrets safely
- Ran jobs on multiple operating systems in parallel
- Read logs to debug and verify runs

References
GitHub Actions documentation: https://docs.github.com/en/actions
Workflow syntax reference: https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions
GitHub Actions marketplace: https://github.com/marketplace?type=actions

Completed by: Alen George
Student ID: 991716469
Date: November 2, 2025

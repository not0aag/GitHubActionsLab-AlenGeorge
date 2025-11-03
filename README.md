# GitHub Actions Lab #4 - Automated Workflows

**Student Name:** Alen George  
**Student ID:** 991716469  
**Repository:** GitHubActionsLab-AlenGeorge

---

## Overview

This repository demonstrates three GitHub Actions workflows showcasing essential CI/CD concepts:

- Job dependencies and sequential execution
- Environment variable management at multiple scopes
- Secret handling for sensitive credentials
- Multi-platform testing across different operating systems

---

## Workflows

### Workflow 1: Job Dependencies (`dependent-jobs.yml`)

**Purpose:** Demonstrates sequential job execution using the `needs` keyword.

**Trigger:** Push to main branch

**Job Flow:**

```
build → test → deploy
```

**Description:**

- **build:** Simulates building the application, runs first
- **test:** Depends on build (uses `needs: build`), simulates testing
- **deploy:** Depends on test (uses `needs: test`), simulates deployment

**Key Concept:** The `needs` keyword creates dependencies, ensuring jobs run in a specific order. If build fails, test won't run. If test fails, deploy won't run.

---

### Workflow 2: Environment Variables and Secrets (`env-and-secrets.yml`)

**Purpose:** Demonstrates environment variable scope (workflow, job, step) and secure secret management.

**Trigger:** Manual dispatch (workflow_dispatch)

**Environment Variables:**

**Workflow Level (available to all jobs):**

- `AWS_REGION: us-east-1`
- `ENVIRONMENT: production`

**Job Level (only in deploy-to-aws job):**

- `DEPLOYMENT_NAME: AlenGeorge-Production-Deploy`

**Step Level (only in specific steps):**

- `DEPLOYMENT_STAGE: pre-production-validation`

**Secrets Used:**

- `AWS_ACCESS_KEY_ID` - Stored securely in repository secrets
- `AWS_SECRET_ACCESS_KEY` - Automatically masked in logs as \*\*\*

**Key Concept:** Environment variables have three levels of scope. Variables defined at outer levels (workflow) are accessible at inner levels (job, step), but not vice versa. Secrets are never exposed in logs.

---

### Workflow 3: Multi-Platform Testing (`multi-platform.yml`)

**Purpose:** Demonstrates parallel job execution across three different operating systems.

**Trigger:** Pull request to main branch

**Jobs (running in parallel):**

1. **ubuntu-job** (ubuntu-latest)

   - Uses Linux commands: `uname -a`, `cat`, `df -h`
   - Displays Ubuntu system information
   - Creates and displays test file

2. **windows-job** (windows-latest)

   - Uses PowerShell commands: `systeminfo`, `Write-Host`
   - Displays Windows system information
   - Creates and displays test file using PowerShell

3. **macos-job** (macos-latest)
   - Uses macOS commands: `sw_vers`, `system_profiler`
   - Displays macOS system information
   - Creates and displays test file

**Key Concept:** Jobs without `needs` keyword run in parallel. This workflow tests the same code on three different platforms simultaneously, ensuring cross-platform compatibility.

---

## Key Concepts Demonstrated

### 1. Job Dependencies (`needs`)

The `needs` keyword creates sequential execution:

```yaml
jobs:
  build:
    runs-on: ubuntu-latest

  test:
    needs: build # Waits for build

  deploy:
    needs: test # Waits for test
```

- Jobs with `needs` wait for dependent jobs to complete successfully
- If a dependency fails, dependent jobs are skipped
- Essential for CI/CD pipelines where order matters

### 2. Environment Variables (`env`)

Three levels of scope:

```yaml
# Workflow level - available everywhere
env:
  GLOBAL_VAR: value

jobs:
  my-job:
    # Job level - available in this job only
    env:
      JOB_VAR: value

    steps:
      # Step level - available in this step only
      - name: My step
        env:
          STEP_VAR: value
```

**Scope Rules:**

- Workflow variables: Accessible in all jobs and steps
- Job variables: Accessible in all steps of that job
- Step variables: Accessible only in that specific step

### 3. Operating Systems (`runs-on`)

Different platforms for testing:

```yaml
jobs:
  ubuntu:
    runs-on: ubuntu-latest # Linux

  windows:
    runs-on: windows-latest # Windows

  macos:
    runs-on: macos-latest # macOS
```

Each OS has different:

- Command syntax (bash vs PowerShell)
- File systems
- Available tools
- Behaviors

### 4. Workflow Triggers (`on`)

Different ways to start workflows:

```yaml
# Automatic on push
on:
  push:
    branches:
      - main

# Automatic on pull request
on:
  pull_request:
    branches:
      - main

# Manual trigger
on:
  workflow_dispatch:
```

### 5. Secrets

Secure credential storage:

```yaml
steps:
  - name: Use secret
    env:
      MY_SECRET: ${{ secrets.MY_SECRET_NAME }}
    run: echo "$MY_SECRET" # Shows as *** in logs
```

- Secrets stored in repository settings
- Never visible in workflow files
- Automatically masked in logs
- Cannot be printed or exposed

---

## Challenges Faced and Solutions

### Challenge 1: Understanding Job Dependencies

**Problem:** Jobs were running in parallel instead of sequentially in Workflow 1.

**Solution:** Added the `needs` keyword to create proper dependencies. Build must complete before test, and test must complete before deploy.

```yaml
test:
  needs: build # This makes test wait for build to finish
```

**Learning:** By default, jobs run in parallel for efficiency. The `needs` keyword is required to create sequential execution.

---

### Challenge 2: Environment Variable Scope Confusion

**Problem:** Step-level variables weren't accessible in subsequent steps.

**Solution:** Understood the three-tier scope hierarchy:

- Workflow-level: Available everywhere
- Job-level: Available in all steps of that job
- Step-level: Only in that specific step

**Learning:** Variables defined at inner scopes (step) are not accessible at outer or sibling scopes. To share across steps, define at job or workflow level.

---

### Challenge 3: Secret Configuration

**Problem:** Initial confusion about where to add secrets and what to name them.

**Solution:**

1. Navigated to Settings → Secrets and variables → Actions
2. Created secrets with EXACT names used in workflow:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
3. Used dummy/fake values for lab purposes

**Learning:** Secret names in GitHub must match exactly with the references in workflow files. Names are case-sensitive.

---

### Challenge 4: Secrets Not Masking

**Problem:** Wanted to verify secrets were properly masked in logs.

**Solution:** Ran Workflow 2 and confirmed that when echoing secret values, they appear as `***` in logs instead of the actual value.

**Learning:** GitHub automatically masks any string that matches a secret value, providing security by default. No additional configuration needed.

---

### Challenge 5: YAML Indentation Errors

**Problem:** Workflow failed due to YAML syntax errors.

**Solution:**

- Used consistent 2-space indentation
- Used VS Code with YAML extension for syntax highlighting
- Validated YAML using online validators before committing

**Learning:** YAML is extremely sensitive to indentation. Tabs vs spaces and inconsistent indentation will break the workflow. Always use 2 spaces per indentation level.

---

### Challenge 6: Pull Request Trigger

**Problem:** Didn't understand how to trigger Workflow 3.

**Solution:**

1. Created a new branch: `git checkout -b test-branch`
2. Made a commit and pushed: `git push origin test-branch`
3. Created a Pull Request on GitHub from test-branch to main
4. Workflow triggered automatically

**Learning:** Pull request triggers activate when a PR is opened or updated. Need to understand git branching and PR workflow.

---

### Challenge 7: Platform-Specific Commands

**Problem:** Windows uses different commands than Linux/macOS.

**Solution:**

- **Linux/macOS:** Used bash commands (`echo`, `cat`, `uname -a`)
- **Windows:** Used PowerShell commands (`Write-Host`, `Get-Content`, `systeminfo`)

**Learning:** Multi-platform testing requires knowledge of each platform's command-line environment. Cannot use same commands across all platforms.

---

### Challenge 8: Workflow Debugging

**Problem:** Workflow failed but error message wasn't clear.

**Solution:**

1. Checked Actions tab for failed workflow
2. Clicked on failed job
3. Expanded failed step to see detailed logs
4. Read error message carefully
5. Fixed the issue (usually YAML syntax or missing secret)

**Learning:** GitHub Actions provides detailed logs for debugging. Always read the full error message and check which step failed.

---

## Setup Instructions

### Prerequisites

- GitHub account
- Git installed locally
- Basic command-line knowledge

### Steps

1. **Create Repository on GitHub:**

   - Name: `GitHubActionsLab-AlenGeorge`
   - Visibility: Public

2. **Clone Repository:**

   ```bash
   git clone https://github.com/YOUR_USERNAME/GitHubActionsLab-AlenGeorge.git
   cd GitHubActionsLab-AlenGeorge
   ```

3. **Create Workflow Directory:**

   ```bash
   mkdir -p .github/workflows
   ```

4. **Add Workflow Files:**

   - Create `dependent-jobs.yml` in `.github/workflows/`
   - Create `env-and-secrets.yml` in `.github/workflows/`
   - Create `multi-platform.yml` in `.github/workflows/`

5. **Configure Secrets:**

   - Go to Settings → Secrets and variables → Actions
   - Add `AWS_ACCESS_KEY_ID` (dummy value: `AKIAIOSFODNN7EXAMPLE`)
   - Add `AWS_SECRET_ACCESS_KEY` (dummy value: `wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY`)

6. **Commit and Push:**

   ```bash
   git add .
   git commit -m "Add GitHub Actions workflows"
   git push origin main
   ```

7. **Test Workflows:**
   - Workflow 1: Runs automatically on push
   - Workflow 2: Trigger manually from Actions tab
   - Workflow 3: Create a branch and pull request

---

## Testing Results

### Workflow 1: Job Dependencies ✓

- Build job executed first
- Test job waited for build to complete
- Deploy job waited for test to complete
- All jobs completed successfully
- Dependency visualization showed correct flow

### Workflow 2: Environment Variables and Secrets ✓

- Manual trigger worked correctly
- Workflow-level variables accessible in all steps
- Job-level variables accessible only in job scope
- Step-level variables accessible only in step scope
- Secrets properly masked as \*\*\* in logs
- All variable scopes demonstrated correctly

### Workflow 3: Multi-Platform Testing ✓

- Pull request trigger worked correctly
- All three jobs started simultaneously (parallel)
- Ubuntu job completed with Linux commands
- Windows job completed with PowerShell commands
- macOS job completed with macOS commands
- Test files created successfully on all platforms

---

## Repository Structure

```
GitHubActionsLab-AlenGeorge/
├── .github/
│   └── workflows/
│       ├── dependent-jobs.yml
│       ├── env-and-secrets.yml
│       └── multi-platform.yml
├── README.md
└── (other test files)
```

---

## Learning Outcomes

Through this lab, I gained hands-on experience with:

1. **GitHub Actions Fundamentals:**

   - Creating workflow files
   - Understanding YAML syntax
   - Configuring triggers
   - Managing jobs and steps

2. **Job Orchestration:**

   - Creating job dependencies with `needs`
   - Understanding parallel vs sequential execution
   - Building CI/CD pipelines

3. **Environment Management:**

   - Using environment variables at different scopes
   - Understanding variable scope hierarchy
   - Managing configuration across workflows

4. **Security:**

   - Storing sensitive data as secrets
   - Understanding automatic secret masking
   - Best practices for credential management

5. **Cross-Platform Development:**

   - Testing code on multiple operating systems
   - Understanding platform-specific commands
   - Ensuring cross-platform compatibility

6. **Debugging:**

   - Reading workflow logs
   - Identifying and fixing errors
   - Understanding error messages

7. **DevOps Practices:**
   - Continuous Integration concepts
   - Automated testing workflows
   - Deployment pipelines

---

## Conclusion

This lab provided practical experience with GitHub Actions, a powerful CI/CD platform. The three workflows demonstrate key concepts that are essential for modern software development:

- **Workflow 1** shows how to create ordered pipelines where each stage depends on the previous one
- **Workflow 2** demonstrates proper configuration management and secret handling
- **Workflow 3** shows how to ensure code works across different platforms

These skills are directly applicable to real-world software development and DevOps practices.

---

## References

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Workflow Syntax Reference](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions)
- [GitHub Actions Marketplace](https://github.com/marketplace?type=actions)

---

**Completed by:** Alen George  
**Student ID:** 991716469  
**Date:** November 2, 2025

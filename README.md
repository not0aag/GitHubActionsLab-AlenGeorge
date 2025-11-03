# GitHub Actions Lab #4 - Automated Workflows

**Student Name:** Alen George  
**Student ID:** 991716469  
**Repository:** GitHubActionsLab-AlenGeorge

---

## Overview

This lab demonstrates three GitHub Actions workflows that I created to understand CI/CD concepts. Each workflow focuses on a different aspect of automation: job dependencies, environment variables with secrets, and multi-platform testing.

---

## Workflows

### Workflow 1: Job Dependencies (`dependent-jobs.yml`)

This workflow shows how jobs can run in sequence using the `needs` keyword. It simulates a typical CI/CD pipeline.

**How it works:**

- Triggers automatically when I push code to the main branch
- Three jobs run in order: build → test → deploy
- Each job waits for the previous one to finish successfully
- If any job fails, the next ones won't run

The `needs` keyword is what makes this sequential execution possible. Without it, all three jobs would run at the same time.

---
### Workflow 2: Environment Variables and Secrets (`env-and-secrets.yml`)

This workflow demonstrates how to use environment variables at different scopes and how GitHub handles sensitive information like API keys.

**How it works:**

- I trigger this one manually from the Actions tab
- It uses three levels of environment variables:
  - **Workflow level**: Available everywhere (like `AWS_REGION: us-east-1`)
  - **Job level**: Only available in that specific job (like `DEPLOYMENT_NAME`)
  - **Step level**: Only available in that specific step (like `DEPLOYMENT_STAGE`)
- It also uses secrets (`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`) which GitHub automatically masks with `***` in the logs so they're never exposed

The key learning here was understanding variable scope—variables defined at a lower level (like step) aren't accessible at higher levels or in other steps.

---

### Workflow 3: Multi-Platform Testing (`multi-platform.yml`)

This workflow tests code on three different operating systems at the same time.

**How it works:**

- Triggers when I create a pull request
- Three jobs run in parallel (not one after another):
  - **Ubuntu** (Linux): Uses bash commands like `uname -a` and `cat`
  - **Windows**: Uses PowerShell commands like `systeminfo` and `Write-Host`
  - **macOS**: Uses macOS-specific commands like `sw_vers`
- Each job displays system information and creates a test file

Since there's no `needs` keyword here, all three jobs start at the same time. This is useful for making sure code works on different platforms without waiting for each test to finish one by one.
---

## Key Concepts

### 1. The `needs` Keyword (Job Dependencies)
Variables can be defined at three levels:

- **Workflow level**: Everyone can see it
- **Step level**: Only that step can see it

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

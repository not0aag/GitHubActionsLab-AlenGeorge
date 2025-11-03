# Quick Setup Guide for GitHub Actions Lab #4

## Student: Alen George (991716469)

---

## Step-by-Step Setup Instructions

### 1. Create GitHub Repository

1. Go to https://github.com
2. Click the green "New" button (top left near your profile)
3. Repository name: **GitHubActionsLab-AlenGeorge** (exactly as shown)
4. Set visibility to **Public**
5. **DO NOT** check "Add a README file"
6. **DO NOT** add .gitignore or license
7. Click "Create repository"

---

### 2. Initialize Local Repository

Open your terminal/command prompt and run these commands:

```bash
# Navigate to this folder
cd "c:\Software Process Management Sem 5\Inclass 4\GitHubActionsLab-AlenGeorge"

# Initialize git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit - GitHub Actions Lab #4 by Alen George (991716469)"

# Add your GitHub repository as remote (replace YOUR_USERNAME with your actual GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/GitHubActionsLab-AlenGeorge.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Important:** Replace `YOUR_USERNAME` with your actual GitHub username in the remote URL.

---

### 3. Configure Secrets (CRITICAL for Workflow 2)

After pushing to GitHub:

1. Go to your repository: `https://github.com/YOUR_USERNAME/GitHubActionsLab-AlenGeorge`
2. Click **Settings** (top menu bar)
3. In left sidebar: **Secrets and variables** → **Actions**
4. Click **New repository secret**

**First Secret:**

- Name: `AWS_ACCESS_KEY_ID`
- Secret: `AKIAIOSFODNN7EXAMPLE`
- Click "Add secret"

**Second Secret:**

- Name: `AWS_SECRET_ACCESS_KEY`
- Secret: `wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY`
- Click "Add secret"

**Important:** Use these EXACT names. They are case-sensitive.

---

### 4. Test Workflow 1 (Job Dependencies)

This workflow runs automatically when you push to main.

**Already tested!** When you pushed in Step 2, Workflow 1 should have triggered.

To verify:

1. Go to your repository on GitHub
2. Click **Actions** tab
3. You should see "Workflow 1 - Job Dependencies" running or completed
4. Click on it to see the build → test → deploy sequence

---

### 5. Test Workflow 2 (Environment Variables and Secrets)

This workflow must be triggered manually.

1. Go to **Actions** tab
2. In left sidebar, click **Workflow 2 - Environment Variables and Secrets**
3. Click blue **Run workflow** button (right side)
4. Ensure branch is "main"
5. Click green **Run workflow** button
6. Wait for it to complete
7. Click on the workflow run to see logs showing:
   - Workflow-level variables (AWS_REGION, ENVIRONMENT)
   - Job-level variables (DEPLOYMENT_NAME)
   - Step-level variables (DEPLOYMENT_STAGE)
   - Secrets masked as \*\*\*

---

### 6. Test Workflow 3 (Multi-Platform Testing)

This workflow runs when you create a Pull Request.

```bash
# Create a new branch
git checkout -b test-multi-platform

# Create a test file
echo "Testing multi-platform workflow - Alen George" > test-file.txt

# Commit the change
git add test-file.txt
git commit -m "Test multi-platform workflow"

# Push the branch
git push origin test-multi-platform
```

Then on GitHub:

1. You'll see a yellow banner: "test-multi-platform had recent pushes"
2. Click **Compare & pull request**
3. Base: main, Compare: test-multi-platform
4. Click **Create pull request**
5. Workflow 3 will start automatically
6. You'll see three jobs running in parallel: ubuntu-job, windows-job, macos-job
7. After all checks pass, click **Merge pull request**
8. Click **Confirm merge**
9. Delete the branch if prompted

---

## Files Created

✓ `.github/workflows/dependent-jobs.yml` - Workflow 1  
✓ `.github/workflows/env-and-secrets.yml` - Workflow 2  
✓ `.github/workflows/multi-platform.yml` - Workflow 3  
✓ `README.md` - Complete documentation  
✓ `SETUP.md` - This setup guide (optional)

---

## Verification Checklist

Before submitting, verify:

- [ ] Repository created with exact name: GitHubActionsLab-AlenGeorge
- [ ] All three workflow files pushed to GitHub
- [ ] README.md pushed to GitHub
- [ ] Both secrets configured in repository settings
- [ ] Workflow 1 executed successfully (automatic on push)
- [ ] Workflow 2 executed successfully (manual trigger)
- [ ] Workflow 3 executed successfully (pull request trigger)
- [ ] All three jobs in Workflow 3 ran in parallel
- [ ] Screenshots captured of all workflow runs
- [ ] Screenshots show secrets masked as \*\*\* in Workflow 2

---

## Common Issues and Solutions

### Issue: Workflow files don't appear in Actions tab

**Solution:**

- Ensure folder is `.github/workflows` (with dot at beginning)
- Ensure files are `.yml` extension
- Ensure you pushed to GitHub
- Refresh the Actions page

### Issue: Workflow 2 shows empty secrets

**Solution:**

- Verify secret names are EXACTLY: `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`
- Secrets are case-sensitive
- Re-run the workflow after adding secrets

### Issue: Can't trigger Workflow 3

**Solution:**

- Must create a Pull Request (not just push)
- PR must target the main branch
- Follow Step 6 instructions exactly

### Issue: Git push fails with authentication error

**Solution:**

- GitHub no longer accepts passwords
- Use a Personal Access Token instead of password
- Or set up SSH keys
- See: https://docs.github.com/en/authentication

---

## Screenshot Checklist

Capture these screenshots for submission:

**General:**

- [ ] Repository overview showing all files
- [ ] Actions tab showing all three workflows

**Workflow 1:**

- [ ] Workflow run showing build → test → deploy sequence
- [ ] Job dependency visualization/graph
- [ ] Logs from at least one job

**Workflow 2:**

- [ ] Secrets configuration page (showing secret names, not values)
- [ ] Manual workflow dispatch page
- [ ] Logs showing environment variables at all three levels
- [ ] Logs showing secrets masked as \*\*\*

**Workflow 3:**

- [ ] Pull request page with workflow checks
- [ ] All three jobs running in parallel
- [ ] Completed jobs with green checkmarks
- [ ] Logs from at least one platform

---

## Submission

Submit the following:

1. **Repository URL:** `https://github.com/YOUR_USERNAME/GitHubActionsLab-AlenGeorge`
2. **Screenshots** (organized in a document or folder)
3. **README.md** (already in repository)

---

## Quick Reference Commands

```bash
# Check current branch
git branch

# Check repository status
git status

# View commit history
git log --oneline

# View remote URL
git remote -v

# Pull latest changes
git pull origin main

# Switch to main branch
git checkout main

# Create and switch to new branch
git checkout -b branch-name
```

---

**Good luck with your submission!**

**Student:** Alen George  
**Student ID:** 991716469  
**Date:** November 2, 2025

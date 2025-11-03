# GitHub Actions Lab #4 - Submission Checklist

**Student Name:** Alen George  
**Student ID:** 991716469  
**Repository:** GitHubActionsLab-AlenGeorge  
**Date:** November 2, 2025

---

## ✅ Files Created (All Complete!)

- [x] `.github/workflows/dependent-jobs.yml` - Workflow 1
- [x] `.github/workflows/env-and-secrets.yml` - Workflow 2
- [x] `.github/workflows/multi-platform.yml` - Workflow 3
- [x] `README.md` - Complete documentation
- [x] `SETUP.md` - Setup guide
- [x] `.gitignore` - Git ignore file

---

## 📋 Next Steps to Complete

### Step 1: Create GitHub Repository ⏳

1. Go to https://github.com
2. Click green "New" button
3. Repository name: `GitHubActionsLab-AlenGeorge` (EXACT)
4. Set to **Public**
5. **DO NOT** initialize with README
6. Click "Create repository"

**Status:** [ ] Not Started / [ ] In Progress / [ ] Complete

---

### Step 2: Push to GitHub ⏳

Run these commands in your terminal:

```cmd
cd "c:\Software Process Management Sem 5\Inclass 4\GitHubActionsLab-AlenGeorge"

git init
git add .
git commit -m "Initial commit - GitHub Actions Lab #4 by Alen George (991716469)"
git remote add origin https://github.com/YOUR_USERNAME/GitHubActionsLab-AlenGeorge.git
git branch -M main
git push -u origin main
```

**Remember:** Replace `YOUR_USERNAME` with your GitHub username!

**Status:** [ ] Not Started / [ ] In Progress / [ ] Complete

---

### Step 3: Configure Secrets ⏳

**CRITICAL:** Workflow 2 will fail without these!

1. Go to repository on GitHub
2. Click **Settings** → **Secrets and variables** → **Actions**
3. Add first secret:
   - Name: `AWS_ACCESS_KEY_ID`
   - Value: `AKIAIOSFODNN7EXAMPLE`
4. Add second secret:
   - Name: `AWS_SECRET_ACCESS_KEY`
   - Value: `wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY`

**Status:** [ ] Not Started / [ ] In Progress / [ ] Complete

---

### Step 4: Test Workflow 1 (Automatic) ⏳

This runs automatically when you push to main.

**Verification:**

1. Go to repository **Actions** tab
2. Find "Workflow 1 - Job Dependencies"
3. Verify all three jobs completed:
   - ✓ build
   - ✓ test (ran after build)
   - ✓ deploy (ran after test)

**Status:** [ ] Not Started / [ ] Running / [ ] Complete

---

### Step 5: Test Workflow 2 (Manual) ⏳

**Steps:**

1. Go to **Actions** tab
2. Click "Workflow 2 - Environment Variables and Secrets" (left sidebar)
3. Click **Run workflow** (blue button, right side)
4. Select branch: main
5. Click **Run workflow** (green button)
6. Wait for completion
7. Verify output shows:
   - Workflow-level variables ✓
   - Job-level variables ✓
   - Step-level variables ✓
   - Secrets masked as \*\*\* ✓

**Status:** [ ] Not Started / [ ] Running / [ ] Complete

---

### Step 6: Test Workflow 3 (Pull Request) ⏳

**Steps:**

```cmd
git checkout -b test-multi-platform
echo "Testing multi-platform workflow - Alen George" > test-file.txt
git add test-file.txt
git commit -m "Test multi-platform workflow"
git push origin test-multi-platform
```

Then on GitHub:

1. Click "Compare & pull request"
2. Create pull request (base: main, compare: test-multi-platform)
3. Verify three jobs run in PARALLEL:
   - ✓ ubuntu-job
   - ✓ windows-job
   - ✓ macos-job
4. After checks pass, merge the PR

**Status:** [ ] Not Started / [ ] Running / [ ] Complete

---

## 📸 Screenshot Requirements

### General Screenshots (3)

- [ ] Repository overview showing all files
- [ ] Actions tab showing all three workflows listed
- [ ] Workflow files in `.github/workflows/` folder

### Workflow 1 Screenshots (3)

- [ ] Workflow run page showing all three jobs
- [ ] Job dependency graph/visualization (build → test → deploy)
- [ ] Logs from at least one job showing successful execution

### Workflow 2 Screenshots (4)

- [ ] Secrets configuration page (Settings → Secrets)
- [ ] Manual workflow dispatch interface
- [ ] Logs showing workflow-level environment variables
- [ ] Logs showing secrets masked as \*\*\*

### Workflow 3 Screenshots (4)

- [ ] Pull request page showing workflow checks
- [ ] Actions page showing three jobs running in parallel
- [ ] Completed workflow with all three jobs successful
- [ ] Logs from at least one platform (Ubuntu/Windows/macOS)

**Total Screenshots Needed:** At least 14 screenshots

**Status:** [ ] 0-5 screenshots / [ ] 6-10 screenshots / [ ] 11-14 screenshots / [ ] Complete (14+)

---

## 📝 Documentation Checklist

- [x] README.md includes student name and ID
- [x] README.md explains all three workflows
- [x] README.md documents key concepts (needs, env, runs-on)
- [x] README.md includes challenges and solutions
- [x] README.md includes setup instructions
- [x] README.md includes testing results
- [x] README.md includes learning outcomes
- [x] README.md is professional and well-formatted

---

## 🧪 Testing Verification

### Workflow 1: Job Dependencies

- [ ] Build job runs first
- [ ] Test job waits for build (uses `needs: build`)
- [ ] Deploy job waits for test (uses `needs: test`)
- [ ] All jobs complete successfully
- [ ] Logs show correct order: build → test → deploy

### Workflow 2: Environment Variables and Secrets

- [ ] Can trigger manually from Actions tab
- [ ] Workflow-level variables display correctly
- [ ] Job-level variables display correctly
- [ ] Step-level variables display correctly
- [ ] Secrets are masked as \*\*\* in logs
- [ ] All five steps complete successfully

### Workflow 3: Multi-Platform Testing

- [ ] Triggers automatically when PR is created
- [ ] All three jobs start at the same time (parallel)
- [ ] ubuntu-job completes with Linux commands
- [ ] windows-job completes with PowerShell commands
- [ ] macos-job completes with macOS commands
- [ ] All three jobs complete successfully

---

## 🔍 Quality Checks

### Code Quality

- [x] All YAML files use 2-space indentation (no tabs)
- [x] All workflow names are meaningful and descriptive
- [x] All step names are clear and descriptive
- [x] No syntax errors in any YAML file
- [x] Student name (Alen George) appears in all workflows
- [x] Student ID (991716469) appears in all workflows

### GitHub Repository

- [ ] Repository name is exactly: `GitHubActionsLab-AlenGeorge`
- [ ] Repository is public (accessible)
- [ ] All files are pushed to main branch
- [ ] README.md is visible on repository homepage
- [ ] No unnecessary files (cleaned up)

### Secrets Configuration

- [ ] Secret name: `AWS_ACCESS_KEY_ID` (exact spelling)
- [ ] Secret name: `AWS_SECRET_ACCESS_KEY` (exact spelling)
- [ ] Both secrets have values set
- [ ] Secrets page screenshot captured

---

## 🎯 Grading Rubric Self-Assessment

### Workflow 1: Job Dependencies (5 marks)

- **Uses `needs` keyword correctly (2 marks):** [ ] Yes / [ ] No
- **Three jobs in proper sequence (2 marks):** [ ] Yes / [ ] No
- **Meaningful steps and output (1 mark):** [ ] Yes / [ ] No

**Self Score: \_\_\_ / 5**

### Workflow 2: Environment Variables (5 marks)

- **Workflow-level variables (1.5 marks):** [ ] Yes / [ ] No
- **Job-level variables (1.5 marks):** [ ] Yes / [ ] No
- **Step-level variables (1 mark):** [ ] Yes / [ ] No
- **Proper secret usage (1 mark):** [ ] Yes / [ ] No

**Self Score: \_\_\_ / 5**

### Workflow 3: Multi-Platform (5 marks)

- **Three independent jobs (2 marks):** [ ] Yes / [ ] No
- **Different OS platforms (2 marks):** [ ] Yes / [ ] No
- **OS-specific commands (1 mark):** [ ] Yes / [ ] No

**Self Score: \_\_\_ / 5**

### Execution (2 marks)

- **All workflows trigger correctly (1 mark):** [ ] Yes / [ ] No
- **All workflows execute successfully (1 mark):** [ ] Yes / [ ] No

**Self Score: \_\_\_ / 2**

### Code Quality (3 marks)

- **Clean structure and formatting (1 mark):** [ ] Yes / [ ] No
- **Meaningful names (1 mark):** [ ] Yes / [ ] No
- **Professional documentation (1 mark):** [ ] Yes / [ ] No

**Self Score: \_\_\_ / 3**

---

## **TOTAL ESTIMATED SCORE: \_\_\_ / 20**

---

## 📦 Final Submission Package

Before submitting, ensure you have:

1. **GitHub Repository URL:**

   ```
   https://github.com/YOUR_USERNAME/GitHubActionsLab-AlenGeorge
   ```

2. **Screenshots Folder** containing:

   - All workflow execution screenshots
   - Secrets configuration screenshot
   - Repository overview screenshot
   - All organized and labeled clearly

3. **Repository Contents:**

   - All three workflow files in `.github/workflows/`
   - Complete README.md
   - All workflows successfully executed

4. **Documentation:**
   - README.md is complete and professional
   - All challenges documented
   - All learning outcomes explained

---

## 🚀 Submission Ready?

### Final Checklist (All Must Be ✓)

- [ ] Repository created on GitHub with exact name
- [ ] All files pushed to GitHub
- [ ] Both secrets configured
- [ ] Workflow 1 executed successfully
- [ ] Workflow 2 executed successfully
- [ ] Workflow 3 executed successfully
- [ ] All screenshots captured and organized
- [ ] README.md is complete and professional
- [ ] Repository URL ready for submission
- [ ] Self-assessment completed

---

## 📊 Time Tracking

- **Files Created:** ✓ Complete (done by Copilot)
- **Repository Setup:** \_\_\_ minutes
- **Secret Configuration:** \_\_\_ minutes
- **Workflow Testing:** \_\_\_ minutes
- **Screenshots:** \_\_\_ minutes
- **Review & Submission:** \_\_\_ minutes

**Total Time:** Estimated 45-60 minutes

---

## 🎓 Key Concepts Review

Before submitting, confirm you understand:

- [ ] What `needs` keyword does (creates job dependencies)
- [ ] Three levels of environment variables (workflow, job, step)
- [ ] How secrets are masked in logs
- [ ] Difference between parallel and sequential jobs
- [ ] How to trigger each workflow type
- [ ] Purpose of `runs-on` (specifies OS platform)
- [ ] Difference between `push`, `pull_request`, and `workflow_dispatch` triggers

---

## 💡 Tips for Success

1. **Read error messages carefully** - GitHub Actions provides detailed logs
2. **Check YAML indentation** - Use exactly 2 spaces, no tabs
3. **Verify secret names** - They are case-sensitive
4. **Wait for workflows to complete** - Can take 2-5 minutes
5. **Take clear screenshots** - Zoom out to capture full context
6. **Label screenshots** - Easier to organize later
7. **Test each workflow** - Don't just assume they work

---

## 🆘 Need Help?

### Common Issues:

1. **Workflows don't appear:** Check folder is `.github/workflows` with dot
2. **Secrets don't work:** Verify exact names (case-sensitive)
3. **Workflow 3 won't trigger:** Must create Pull Request, not just push
4. **YAML errors:** Validate at https://www.yamllint.com/
5. **Git push fails:** Use Personal Access Token, not password

### Resources:

- GitHub Actions Docs: https://docs.github.com/en/actions
- YAML Validator: https://www.yamllint.com/
- Setup Guide: See `SETUP.md` in this repository

---

**Good luck, Alen George! 🎉**

**You've got this! All the hard work is done - just follow the steps!**

---

**Last Updated:** November 2, 2025  
**Student ID:** 991716469

# 🎯 VISUAL QUICK START GUIDE

## GitHub Actions Lab #4 - Alen George (991716469)

---

## 📍 YOU ARE HERE

```
✅ All files created
✅ All code written
✅ All documentation complete

⏳ Ready to push to GitHub
⏳ Ready to configure secrets
⏳ Ready to test workflows
```

---

## 🗺️ THE JOURNEY (6 Simple Steps)

```
START HERE
    ↓
[1] Create GitHub Repo (5 min)
    ↓
[2] Push Files (5 min)
    ↓
[3] Configure Secrets (5 min)
    ↓
[4] Test Workflow 1 ✓ (automatic)
    ↓
[5] Test Workflow 2 (manual, 5 min)
    ↓
[6] Test Workflow 3 (PR, 10 min)
    ↓
DONE! Take screenshots & submit
```

---

## 🎬 STEP-BY-STEP WITH SCREENSHOTS

### STEP 1: Create GitHub Repository

**Where:** https://github.com

**What you'll see:**

```
[New] button (green, top right)
    ↓
Repository name: GitHubActionsLab-AlenGeorge
Public: [✓]
Add README: [ ] (leave unchecked)
    ↓
[Create repository] (green button)
```

**Screenshot needed:** ❌ No (but you can if you want)

---

### STEP 2: Push Files to GitHub

**Where:** Command Prompt (cmd)

**Commands to run:**

```cmd
cd "c:\Software Process Management Sem 5\Inclass 4\GitHubActionsLab-AlenGeorge"

git init
git add .
git commit -m "Initial commit - GitHub Actions Lab #4 by Alen George (991716469)"
git remote add origin https://github.com/YOUR_USERNAME/GitHubActionsLab-AlenGeorge.git
git branch -M main
git push -u origin main
```

**CRITICAL:** Replace `YOUR_USERNAME` with your GitHub username!

**What you'll see:**

```
Counting objects...
Writing objects...
Total X (delta Y)...
To https://github.com/YOUR_USERNAME/GitHubActionsLab-AlenGeorge.git
 * [new branch]      main -> main
```

**Screenshot needed:** ❌ No (but repository overview later)

---

### STEP 3: Configure Secrets

**Where:** GitHub Repository → Settings → Secrets and variables → Actions

**Visual Path:**

```
Your Repository
    ↓
Settings (top menu bar)
    ↓
Secrets and variables (left sidebar)
    ↓
Actions
    ↓
[New repository secret] (green button)
```

**First Secret:**

```
Name: AWS_ACCESS_KEY_ID
Secret: AKIAIOSFODNN7EXAMPLE
[Add secret]
```

**Second Secret:**

```
Name: AWS_SECRET_ACCESS_KEY
Secret: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
[Add secret]
```

**What you'll see:**

```
Repository secrets
• AWS_ACCESS_KEY_ID        Updated X seconds ago
• AWS_SECRET_ACCESS_KEY    Updated X seconds ago
```

**Screenshot needed:** ✅ YES! Capture this page showing both secrets

---

### STEP 4: Verify Workflow 1 (Automatic)

**Where:** GitHub Repository → Actions

**Visual:**

```
Actions (top menu bar)
    ↓
You'll see:
"Workflow 1 - Job Dependencies" (running or completed)
    ↓
Click on it
    ↓
You'll see job graph:
    build
      ↓
    test
      ↓
    deploy
```

**What you'll see:**

```
✓ build (completed)
✓ test (completed)
✓ deploy (completed)
```

**Screenshots needed:**

- ✅ Job dependency graph
- ✅ Workflow run page
- ✅ Logs from one job

---

### STEP 5: Test Workflow 2 (Manual)

**Where:** GitHub Repository → Actions

**Visual Path:**

```
Actions (top menu bar)
    ↓
Left sidebar: "Workflow 2 - Environment Variables and Secrets"
    ↓
[Run workflow] button (blue, right side)
    ↓
Branch: main
    ↓
[Run workflow] button (green)
    ↓
Wait for it to complete (refresh page)
    ↓
Click on the workflow run
    ↓
Click on "deploy-to-aws" job
```

**What you'll see in logs:**

```
Workflow-Level Environment Variables
================================
AWS Region: us-east-1
Environment: production

Job-Level Environment Variables
================================
Deployment Name: AlenGeorge-Production-Deploy

AWS Credentials (Masked Secrets)
================================
AWS Access Key ID: ***
AWS Secret Access Key: ***
```

**Screenshots needed:**

- ✅ Manual trigger interface
- ✅ Environment variables output
- ✅ Secrets masked as \*\*\*

---

### STEP 6: Test Workflow 3 (Pull Request)

**Where:** Command Prompt + GitHub

**Part A - Command Prompt:**

```cmd
cd "c:\Software Process Management Sem 5\Inclass 4\GitHubActionsLab-AlenGeorge"

git checkout -b test-multi-platform
echo "Testing multi-platform workflow - Alen George" > test-file.txt
git add test-file.txt
git commit -m "Test multi-platform workflow"
git push origin test-multi-platform
```

**Part B - GitHub:**

```
Go to your repository
    ↓
You'll see yellow banner:
"test-multi-platform had recent pushes"
    ↓
[Compare & pull request] (green button)
    ↓
Base: main ← Compare: test-multi-platform
    ↓
Title: "Test multi-platform workflow"
    ↓
[Create pull request] (green button)
    ↓
Workflow 3 starts automatically!
```

**What you'll see:**

```
Checks are running...
✓ ubuntu-job    (running in parallel)
✓ windows-job   (running in parallel)
✓ macos-job     (running in parallel)
```

**After all checks pass:**

```
[Merge pull request] (green button)
    ↓
[Confirm merge]
```

**Screenshots needed:**

- ✅ Pull request with checks
- ✅ Three jobs in parallel
- ✅ Completed workflow
- ✅ Logs from one platform

---

## 📸 SCREENSHOT MASTER LIST

### Must Have (14 screenshots):

**General (3):**

1. Repository homepage showing README.md
2. Actions tab showing all 3 workflows
3. File structure showing `.github/workflows/` with 3 files

**Workflow 1 (3):** 4. Job dependency graph (build → test → deploy) 5. Workflow run page (all jobs completed) 6. Logs from any job

**Workflow 2 (4):** 7. Secrets configuration page (2 secrets visible) 8. Manual workflow dispatch interface 9. Logs showing environment variables 10. Logs showing secrets as \*\*\*

**Workflow 3 (4):** 11. Pull request page with checks 12. Three jobs running in parallel 13. All jobs completed successfully 14. Logs from any platform

---

## ✅ COMPLETION CRITERIA

You're done when ALL are checked:

```
✓ Repository created: GitHubActionsLab-AlenGeorge
✓ All files pushed to GitHub
✓ Two secrets configured
✓ Workflow 1 completed (build → test → deploy)
✓ Workflow 2 completed (all variable levels shown)
✓ Workflow 3 completed (3 platforms in parallel)
✓ 14+ screenshots captured
✓ Screenshots organized and labeled
```

---

## 🎨 VISUAL WORKFLOW COMPARISON

### Workflow 1: SEQUENTIAL (Uses `needs`)

```
START
  ↓
build (runs first)
  ↓ needs: build
test (waits for build)
  ↓ needs: test
deploy (waits for test)
  ↓
END
```

**Time:** ~10 seconds total (sequential)

---

### Workflow 2: SINGLE JOB (Manual trigger)

```
Manual Trigger
  ↓
deploy-to-aws
  ├─ Step 1: Workflow-level vars
  ├─ Step 2: Job-level vars
  ├─ Step 3: Secrets
  ├─ Step 4: Step-level vars
  └─ Step 5: Summary
  ↓
END
```

**Time:** ~5 seconds

---

### Workflow 3: PARALLEL (No `needs`)

```
Pull Request Trigger
         ↓
   ┌─────┼─────┐
   ↓     ↓     ↓
ubuntu windows macos
   ↓     ↓     ↓
   └─────┼─────┘
         ↓
       END
```

**Time:** ~30 seconds (all run simultaneously)

---

## 🎯 KEY DIFFERENCES

| Feature          | Workflow 1   | Workflow 2          | Workflow 3     |
| ---------------- | ------------ | ------------------- | -------------- |
| **Trigger**      | push to main | Manual              | Pull request   |
| **Jobs**         | 3            | 1                   | 3              |
| **Execution**    | Sequential   | Single              | Parallel       |
| **Uses `needs`** | ✅ Yes       | ❌ No               | ❌ No          |
| **Key Concept**  | Dependencies | Variables & Secrets | Multi-platform |

---

## 🔍 WHAT TO LOOK FOR IN LOGS

### Workflow 1 Logs:

Look for:

```
✓ "Starting build process..."
✓ "Student ID: 991716469"
✓ "Build completed successfully!"
✓ Jobs run in order: 1. build, 2. test, 3. deploy
```

### Workflow 2 Logs:

Look for:

```
✓ "AWS Region: us-east-1" (workflow-level)
✓ "Deployment Name: AlenGeorge-Production-Deploy" (job-level)
✓ "Deployment Stage: pre-production-validation" (step-level)
✓ "AWS Access Key ID: ***" (secret masked)
```

### Workflow 3 Logs:

Look for:

```
✓ Ubuntu: "uname -a", "cat /etc/os-release"
✓ Windows: "systeminfo", "Write-Host"
✓ macOS: "sw_vers", "system_profiler"
✓ All three jobs run at same time (check timestamps)
```

---

## 🚨 COMMON MISTAKES TO AVOID

❌ Repository name wrong (must be: `GitHubActionsLab-AlenGeorge`)  
❌ Folder missing dot (must be: `.github` not `github`)  
❌ Secret names wrong (must be exact: `AWS_ACCESS_KEY_ID`)  
❌ Forgot to replace YOUR_USERNAME in git commands  
❌ Repository set to Private instead of Public  
❌ Forgot to configure secrets before testing Workflow 2  
❌ Pushed to wrong branch (must be `main`)

---

## 💡 PRO TIPS

✅ Copy-paste git commands exactly (avoid typos)  
✅ Test workflows in order (1, 2, 3)  
✅ Wait for each workflow to complete before testing next  
✅ Take screenshots immediately after each test  
✅ Label screenshots clearly (easier to organize later)  
✅ Keep SETUP.md and CHECKLIST.md open for reference  
✅ Read error messages carefully if something fails

---

## ⏱️ TIME TRACKER

**Estimated time for each step:**

```
[1] Create repo: ████░░░░░░ 5 min
[2] Push files:  ████░░░░░░ 5 min
[3] Secrets:     ████░░░░░░ 5 min
[4] Workflow 1:  ████░░░░░░ 5 min (automatic)
[5] Workflow 2:  ████░░░░░░ 5 min
[6] Workflow 3:  ████████░░ 10 min
[7] Screenshots: ████████████░░ 15 min
[8] Review:      ████░░░░░░ 5 min

TOTAL: 55 minutes
```

---

## 🎓 LEARNING CHECKPOINTS

After completing, you should understand:

```
✓ What `needs` keyword does
✓ Three levels of environment variables
✓ How secrets are masked
✓ Difference between parallel and sequential jobs
✓ How to trigger workflows (push, PR, manual)
✓ Platform-specific commands (Linux, Windows, macOS)
✓ YAML syntax and indentation
✓ CI/CD pipeline concepts
```

---

## 📞 HELP RESOURCES

**In This Package:**

- `SUMMARY.md` ← Overview and quick reference
- `SETUP.md` ← Detailed step-by-step instructions
- `CHECKLIST.md` ← Submission checklist
- `README.md` ← Complete documentation
- `setup.bat` ← Automated setup script (edit first!)

**External:**

- GitHub Actions: https://docs.github.com/en/actions
- YAML Validator: https://www.yamllint.com/
- Git Help: https://git-scm.com/docs

---

## 🏁 FINISH LINE

You're done when you can answer "YES" to all:

```
□ Repository created and public?
□ All files visible on GitHub?
□ Both secrets configured?
□ Workflow 1 shows build → test → deploy?
□ Workflow 2 shows all variable levels?
□ Workflow 3 shows 3 platforms in parallel?
□ 14+ screenshots captured?
□ All screenshots clear and labeled?
□ Ready to submit?
```

**If all checked, you're ready to submit! 🎉**

---

**Student:** Alen George  
**ID:** 991716469  
**Lab:** GitHub Actions #4  
**Date:** November 2, 2025

**You've got this! 🚀**

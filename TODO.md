# ✅ SIMPLE CHECKLIST FOR not0aag

**Student:** Alen George (991716469)  
**GitHub:** not0aag

---

## 📋 YOUR TO-DO LIST

### ☐ STEP 1: Create GitHub Repository (5 min)

- Go to: https://github.com/new
- Name: `GitHubActionsLab-AlenGeorge`
- Set to **Public**
- Click **Create repository**

---

### ☐ STEP 2: Push Files (5 min)

**Open Command Prompt and run:**

```cmd
cd "c:\Software Process Management Sem 5\Inclass 4\GitHubActionsLab-AlenGeorge"
setup.bat
```

**OR run these commands manually:**

```cmd
cd "c:\Software Process Management Sem 5\Inclass 4\GitHubActionsLab-AlenGeorge"
git init
git add .
git commit -m "Initial commit - GitHub Actions Lab #4 by Alen George (991716469)"
git remote add origin https://github.com/not0aag/GitHubActionsLab-AlenGeorge.git
git branch -M main
git push -u origin main
```

---

### ☐ STEP 3: Configure Secrets (5 min)

1. Go to: https://github.com/not0aag/GitHubActionsLab-AlenGeorge/settings/secrets/actions
2. Click **New repository secret**
3. Add secret #1:
   - Name: `AWS_ACCESS_KEY_ID`
   - Value: `AKIAIOSFODNN7EXAMPLE`
4. Add secret #2:
   - Name: `AWS_SECRET_ACCESS_KEY`
   - Value: `wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY`

**📸 SCREENSHOT THIS PAGE!**

---

### ☐ STEP 4: Test Workflow 1 (5 min)

1. Go to: https://github.com/not0aag/GitHubActionsLab-AlenGeorge/actions
2. Click on "Workflow 1 - Job Dependencies"
3. Verify: build → test → deploy (all green ✓)

**📸 TAKE 3 SCREENSHOTS:**

- Dependency graph
- All 3 jobs completed
- One job's logs

---

### ☐ STEP 5: Test Workflow 2 (5 min)

1. Go to: https://github.com/not0aag/GitHubActionsLab-AlenGeorge/actions
2. Click "Workflow 2 - Environment Variables and Secrets"
3. Click **Run workflow** → **Run workflow**
4. Wait and view results

**📸 TAKE 4 SCREENSHOTS:**

- Manual trigger page
- Environment variables in logs
- Secrets shown as \*\*\*
- Completed workflow

---

### ☐ STEP 6: Test Workflow 3 (10 min)

**Commands:**

```cmd
cd "c:\Software Process Management Sem 5\Inclass 4\GitHubActionsLab-AlenGeorge"
git checkout -b test-multi-platform
echo "Testing" > test.txt
git add test.txt
git commit -m "Test multi-platform"
git push origin test-multi-platform
```

**Then on GitHub:**

1. Go to: https://github.com/not0aag/GitHubActionsLab-AlenGeorge
2. Click **Compare & pull request**
3. Click **Create pull request**
4. Wait for 3 jobs to complete (Ubuntu, Windows, macOS)
5. Click **Merge pull request**

**📸 TAKE 4 SCREENSHOTS:**

- Pull request page
- 3 jobs in parallel
- All completed
- One platform's logs

---

### ☐ STEP 7: Submit (2 min)

**Submit these 2 things:**

1. **Repository URL:**

   ```
   https://github.com/not0aag/GitHubActionsLab-AlenGeorge
   ```

2. **14+ Screenshots** (organized)

---

## 📸 SCREENSHOT COUNT

- [ ] General (3)
- [ ] Workflow 1 (3)
- [ ] Workflow 2 (4)
- [ ] Workflow 3 (4)

**Total: 14 screenshots minimum**

---

## ⏱️ TOTAL TIME: ~50 minutes

---

## 🎯 WHEN YOU'RE DONE

All checkboxes above should be ☑️

Your repository should be here:
**https://github.com/not0aag/GitHubActionsLab-AlenGeorge**

**Expected Grade: 20/20** ⭐

---

**That's it! Good luck! 🚀**

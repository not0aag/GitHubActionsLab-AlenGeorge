@echo off
REM GitHub Actions Lab #4 - Quick Setup Script
REM Student: Alen George (991716469)
REM 
REM This script helps you set up the Git repository
REM Run this AFTER creating your GitHub repository
REM
REM IMPORTANT: Edit YOUR_USERNAME before running!

echo ================================================
echo GitHub Actions Lab #4 - Setup Script
echo Student: Alen George (991716469)
echo ================================================
echo.

REM Change to the project directory
cd "c:\Software Process Management Sem 5\Inclass 4\GitHubActionsLab-AlenGeorge"

echo Step 1: Initializing Git repository...
git init

echo.
echo Step 2: Adding all files...
git add .

echo.
echo Step 3: Creating initial commit...
git commit -m "Initial commit - GitHub Actions Lab #4 by Alen George (991716469)"

echo.
echo Step 4: Adding remote repository...
git remote add origin https://github.com/not0aag/GitHubActionsLab-AlenGeorge.git

echo.
echo Step 5: Renaming branch to main...
git branch -M main

echo.
echo Step 6: Pushing to GitHub...
git push -u origin main

echo.
echo ================================================
echo Setup Complete!
echo ================================================
echo.
echo Next Steps:
echo 1. Go to your repository on GitHub
echo 2. Configure secrets (see SETUP.md for details)
echo 3. Test all workflows
echo 4. Take screenshots
echo.
echo See CHECKLIST.md for complete submission guide
echo ================================================
pause

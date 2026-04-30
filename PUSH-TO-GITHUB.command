#!/bin/bash
# Elite Nurse Jackie — Push to GitHub
# Double-click this file to upload everything to GitHub automatically

FOLDER="/Users/jackiedouma/Documents/Claude/Projects/Elite nurse Jackie/elite-nurse-jackie"

echo ""
echo "🌿 Elite Nurse Jackie — Pushing to GitHub..."
echo ""

cd "$FOLDER"

# Initialize git if not already done
if [ ! -d ".git" ]; then
  git init
  git remote add origin https://github.com/sageeralove-cpu/elite-nurse-jackie.git
else
  echo "Git already initialized."
fi

git config user.email "jax5635@gmail.com"
git config user.name "Jackie Douma"

# Remove stale lock files if they exist
rm -f .git/HEAD.lock .git/index.lock

# Pull latest from GitHub first to avoid conflicts
git pull origin main --rebase --allow-unrelated-histories || true

git add .
git commit -m "Update preview page, PDFs and dashboard files" || echo "Nothing new to commit."
git branch -M main
git push -u origin main

echo ""
echo "✅ Done! Your site will be live at:"
echo "   https://sageeralove-cpu.github.io/elite-nurse-jackie/"
echo ""
echo "Press Enter to close this window..."
read

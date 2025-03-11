# Step 1: Create a React app
npx create-react-app my-app
cd my-app

# Step 2: Initialize Git and create a GitHub repository
git init
git add .
git commit -m "Initial commit"
gh repo create my-app --public --source=. --remote=origin

# Step 3: Switch to a new branch
git branch update_logo
git checkout update_logo

# Step 4: Replace the existing logo
wget -O src/logo.svg https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg

# Step 5: Update the website link in App.js (manually edit the file)

# Step 6: Commit and push changes
git add .
git commit -m "Updated logo and link"
git push --set-upstream origin update_logo

# Step 7: Create a pull request
gh pr create --base master --head update_logo --title "Update logo and link" --body "Replaced logo and updated the website link."

# Step 8: Merge the pull request
gh pr merge --merge

# Step 9: Add GitHub repository link
# REPO_URL <github_url>

git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git push origin master
# Setup
rm -rf _site
echo "_site/" >> .gitignore
git worktree add _site gh-pages
jekyll build
# Push
cd _site
git add --all
git commit -m "`date +'%Y-%m-%d'` update"
git push origin gh-pages --force
cd ..



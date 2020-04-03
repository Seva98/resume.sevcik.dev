# Master
git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git push origin master
# Setup gh-pages
rm -rf _site
echo "_site/" >> .gitignore
git worktree add _site gh-pages
jekyll build
# Push gh-pages
cd _site
git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git push origin gh-pages --force
cd ..



# Master
git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git push origin master
# Setup gh-pages
rm -rf _site
sed -i '' '/^_site/d' .gitignore
git worktree add _site gh-pages
jekyll build
# Push gh-pages
cd _site
git add .
git commit -a -m "`date +'%Y-%m-%d'` update"
git push origin gh-pages --force
cd ..
echo "_site/" >> .gitignore



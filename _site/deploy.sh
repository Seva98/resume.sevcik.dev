# Master
jekyll build
git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git push origin master
# gh-pages
sed -i '' '/^_site/d' .gitignore
git add _site
git commit -m "`date +'%Y-%m-%d'` update"
git push origin `git subtree split --prefix _site master`:refs/heads/gh-pages --force
echo "_site" >> .gitignore

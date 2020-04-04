# Master
git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git push origin master

sed -i '' '/^_site/d' .gitignore
git add _site
git commit -m "`date +'%Y-%m-%d'` update"
git push origin `git subtree split --prefix _site master`:gh-pages --force
echo "_site" >> .gitignore

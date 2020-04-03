jekyll build
git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git push origin master
cd _site
git init
git remote add origin git@github.com:Seva98/sevcik.dev.git
git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git push -f origin gh-pages
rm -rf .git
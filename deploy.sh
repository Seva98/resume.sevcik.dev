jekyll build
git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git push origin master
cd _site
git init
git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git push --force git@github.com:Seva98/sevcik.dev.git gh-pages
git commit -a -m "`date +'%Y-%m-%d'` blog post"
git push
jekyll build
cd _site
touch .nojekyll
git init
git add -A
git commit -a -m "`date +'%Y-%m-%d'` blog post"
git remote add origin git@github.com:Seva98/sevcik.dev.git
git push -f -u origin master
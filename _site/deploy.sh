jekyll build
git add -A
git commit -m "`date +'%Y-%m-%d'` blog post"
git subtree push --prefix _site origin gh-pages

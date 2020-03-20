jekyll build
git add -A
git commit -m "`date +'%Y-%m-%d'` blog post"
git subtree push -f --prefix _site -u origin gh-pages

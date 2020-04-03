jekyll build
git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git subtree push --prefix=_site origin gh-pages
git push origin master
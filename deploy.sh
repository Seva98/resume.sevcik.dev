jekyll build
git add -A
git commit -m "update"
git subtree push --prefix _site origin gh-pages
git push origin master
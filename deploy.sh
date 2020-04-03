git add -A
git commit -m "`date +'%Y-%m-%d'` update"
git push origin master
rm -rf _site/*
jekyll build
git subtree push --prefix _site origin gh-pages
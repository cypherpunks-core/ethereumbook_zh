git checkout master
gitbook build
git add .
git commit -m $1
git push -u origin master
git branch -D gh-pages
git branch  -r -d  origin/gh-pages
git push origin :gh-pages
git checkout --orphan gh-pages
git rm --cached -r .
git clean -df
cp -r _book/* .
git add .
git commit -m $1
git push -u origin gh-pages
git checkout master

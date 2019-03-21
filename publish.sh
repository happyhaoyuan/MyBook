# install the plugins and build the static site
gitbook install && gitbook build

# add all files to master
git add .

# commit master
git commit -m "update master"

# push to the master
git push origin master

# checkout to the gh-pages branch
git checkout gh-pages

# bring gh-pages up to date with master
git rebase master

# copy the static site files into the current directory.
cp -R _book/* .

# add all files to the gh-pages branch
git add .

# commit to the gh-pages branch
git commit -m "update gh-pages"

# push to the gh-pages branch
git push origin gh-pages

# checkout to the master branch
git checkout master
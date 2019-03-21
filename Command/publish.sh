@echo "install the plugins and build the static site"
gitbook install && gitbook build

@echo "add all files to master"
git add .

@echo "commit master"
git commit -m "update master"

@echo "push to the master"
git push origin master

@echo "checkout to the gh-pages branch"
git checkout gh-pages

@echo "bring gh-pages up to date with master"
git rebase master

@echo "copy the static site files into the current directory."
cp -R _book/* .

@echo "add all files to the gh-pages branch"
git add .

@echo "commit to the gh-pages branch"
git commit -m "update gh-pages"

@echo "push to the gh-pages branch"
git push origin gh-pages

@echo "checkout to the master branch"
git checkout master
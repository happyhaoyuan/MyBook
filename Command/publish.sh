echo "1.install the plugins and build the static site"
gitbook install && gitbook build

echo "2.add all files to master"
git add .

echo "3.commit master"
git commit -m "update master"

echo "4.push to the master"
git push origin master

echo "5.checkout to the gh-pages branch"
git checkout gh-pages

echo "6.bring gh-pages up to date with master"
git rebase master

echo "7.copy the static site files into the current directory."
cp -R _book/* .

echo "8.add all files to the gh-pages branch"
git add .

echo "9.commit to the gh-pages branch"
git commit -m "update gh-pages"

echo "10.push to the gh-pages branch"
git push -f origin gh-pages

echo "11.checkout to the master branch"
git checkout master
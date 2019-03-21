echo "---------------------------------------------------------------"
echo "[Step 1] install the plugins and build the static site"
gitbook install && gitbook build

echo "---------------------------------------------------------------"
echo "[Step 2] add all files to master"
git add .

echo "---------------------------------------------------------------"
echo "[Step 3] commit master"
git commit -m "update master"

echo "---------------------------------------------------------------"
echo "[Step 4] push to the master"
git push origin master

echo "---------------------------------------------------------------"
echo "[Step 5] checkout to the gh-pages branch"
git checkout gh-pages

echo "---------------------------------------------------------------"
echo "[Step 6] bring gh-pages up to date with master"
git rebase master

echo "---------------------------------------------------------------"
echo "[Step 7] copy the static site files into the current directory."
cp -R _book/* .

echo "---------------------------------------------------------------"
echo "[Step 8] add all files to the gh-pages branch"
git add .

echo "---------------------------------------------------------------"
echo "[Step 9] commit to the gh-pages branch"
git commit -m "update gh-pages"

echo "---------------------------------------------------------------"
echo "[Step 10] push to the gh-pages branch"
git push -f origin gh-pages

echo "---------------------------------------------------------------"
echo "[Step 11] checkout to the master branch"
git checkout master
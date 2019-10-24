# Git

* Initialize
```bash
git init
```

* Add file
```bash
git add <files>
```

* Commit
```bash
git commit -m "<you commit>"
```

* Remove/Add the local to a remote repository
```bash
git remote rm <name:origin>
git remote add <name:origin> <your remote git ssh address>
```
* Push the change
```bash
git push (-u) (-f) origin master
```
* Overwrite local
```bash
git reset --hard origin/master
```
* Get back to previous commit
```bash
git checkout <hash id>
git push origin HEAD:master --force
```
* Check all branches
```bash
git branch -a
```

* Create a branch
```bash
git checkout -b <branch_name>
```

* Delete a branch
```bash
git branch -d <branch_name>
```

* Switch to a branch
```bash
git checkout <branch_name>
```

* Check the conflict
```bash
git status
```
> or

	```bash
	git log
	```

* Get URL
```bash
git config --get remote.origin.url
```

* Config 
```bash
git config --global credential.helper store
vi  ~/.git-credentials
https://<USERNAME>:<Personal access tokens>@github.com
```
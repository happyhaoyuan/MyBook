# How to initialize and install My Gitbook

1. Install `Git`
* Windows
> Download [here](https://git-scm.com/download/win)
* Mac
2. Install `Nodejs`
* Windows
> Download [here](https://nodejs.org/en/download/)
* Mac
3. Install `GitBook`
```bash
npm install gitbook -g
```
4. Install `GitBook-Cli`
```bash
npm install gitbook-cli -g
```
5. Add a new SSH key
* Specify your user info
```bash
git config --global user.name "your_username"
git config --global user.email "your_email"
```
* Check if exsit
```bash
ls -al ~/.ssh
```
* Create a new one
```bash
ssh-keygen -t rsa
```
* Get SSH key
* Windows
```
more id_rsa.pub
```
* Mac
```
cat id_rsa.pub
```
Then add this to Github: **settings/SSH and GPG keys**


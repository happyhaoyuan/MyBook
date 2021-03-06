# How to initialize My Gitbook

0. Install `zsh`

> https://blog.joaograssi.com/windows-subsystem-for-linux-with-oh-my-zsh-conemu/
> https://www.howtoforge.com/tutorial/how-to-setup-zsh-and-oh-my-zsh-on-linux/
> https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
> https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

```bash
ZSH_DISABLE_COMPFIX="true"
unsetopt inc_append_history
unsetopt share_history
plugins=(
  git                                                                                                                                                           zsh-autosuggestions
  zsh-syntax-highlighting
  docker
  sudo
  vi-mode
  virtualenvwrapper
)
```

1. Install `Git`

	* Windows 
	> [Download](https://git-scm.com/download/win)

	* Mac
	> Check and install it
	```bash
	git --version
	```

2. Install `Nodejs`

	> [Download](https://nodejs.org/en/download/)

3. Install `GitBook`
```bash
npm install gitbook -g
```
4. Install `GitBook-Cli`
```bash
(sudo) npm install gitbook-cli -g
```

5. Install sublime text

	* Download [here](http://www.sublimetext.com)

	* Launch it in command
```bash
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
```
	* Package Control
	
		* `Ctrl+Shift+P` to search `Install Package Control` for the first use

		* search `Package Control: Install Package` to install

		 	* MarkdownPreview
		 	
		 	go to `Preferences -> Key Bindings` to add shortcut keys:
		 	```json
		 	{ "keys": ["ctrl+m"], "command": "markdown_preview", "args": {"target": "browser", "parser":"markdown"}},
			{ "keys": ["ctrl+g"], "command": "markdown_preview", "args": {"target": "browser", "parser":"github"}}
		 	```
		 	go to `Preferences -> Package Settings -> Markdown Preview -> Settings` to enable autoreload:
		 	```json
		 	{"enable_autoreload": true}
		 	```

		 	* LiveReload
		 	
		 	search `LiveReload: Enable/disable plug-ins` to select `Simple Reload`

6. Add a new SSH key

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
```bash
more id_rsa.pub
```
	
		* Mac
```bash
cat id_rsa.pub
```

> Then add this to Github: **settings/SSH and GPG keys**

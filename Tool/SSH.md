# SSH

* SSH login without password(password free)
> To set up a password-free login from service A to service B

[import:6-7, title:"In service A"](../Code/shell.sh)

[import:8-9, title:"In service B"](../Code/shell.sh)

* Copy files
> Add the followings to `~/.bash` or `~/.zshrc`
[import:11-14, title:"SCP utils"](../Code/shell.sh)

* Keep SSH alive
> Add the followings to `~/.bash` or `~/.zshrc`
[import:15-15, title:"keep SSH alive"](../Code/shell.sh)


Host <host_name>
    ProxyCommand ssh -W %h:%p <bastiom>
    Hostname <host>

ssh <bastiom> 'mkdir -p .ssh'
scp ~/.ssh/id_rsa* <bastiom>:~/.ssh

ssh <bastiom>
echo "id_rsa.pub" | tar cf - -C .ssh --files-from - | ssh <host> 'mkdir -p .ssh; tar xf - -C .ssh; cd .ssh; cat id_rsa.pub >> authorized_keys'
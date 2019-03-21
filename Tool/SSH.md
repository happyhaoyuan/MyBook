# SSH

* SSH login without password
> To set up a password-free login from service A to service B
	+ With service A

	```bash
	ssh {service B} mkdir -p .ssh
	```

	```bash
	cat .ssh/id_rsa.pub | ssh {service B} 'cat >> .ssh/authorized_keys'
	```

	+ With service B

	```bash
	chmod 700 .ssh
	```

	```bash
	chmod 640 .ssh/authorized_keys
	```
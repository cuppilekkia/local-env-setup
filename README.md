# Install Ansible
#### Linux (Ubuntu only)


## Requirements
Before starting the playbook make sure to have:

- the npm token created in [KC Auth](https://kc-auth.motork.io/)

- setup an SSH key for your machine on your bitbucket account

- you might also need to install the following
```sh
sudo apt-get install python3-distutils
sudo apt-get install python3-apt
```

## Prepare

1. Copy `default.config.yml.example` to -> `default.config.yml`
2. Change the variables in `default.config.yml` according to your setup
3. Launch the setup
```sh
$ chmod +x ./setup-ansible.sh && ./setup-ansible.sh
```
4. [optional] After the setup copy your .ovpn file into `/etc/openvpn` and change the extension to `.conf`

## Content of the setup
Main:

- Docker

- GIT

- [Java](https://github.com/geerlingguy/ansible-role-java)

- NodeJS & NPM

- Yarn

- Oh my zsh

- Crowdin CLI

- Postman

---
TULU:

- leadspark-tulu repo

- keycloak-themes repo

- NPM_TOKEN exported globally

- Composer auth.json file

- .npmrc file

- `mkvpn` alias to start/stop openvpn service with personal conf

- `kibana`, `keycloak`, `dispatcher` added in hosts as 127.0.0.1


---
And also as requirements:

- curl

- python3-pip

- virtualenv


---
### Helpers
After the firts run you won't need to execute the setup-ansible.sh again everytime you want to update the play, just run the Makefile commands:

`make requirements`: Installs the requirements, is a shortcut for:
`$ ansible-galaxy install -r requirements.yml`

`make install`: Runs the playbook, is a shortcut for:
Run and input the password when asked
`$ ansible-playbook main.yml -i inventory -K`
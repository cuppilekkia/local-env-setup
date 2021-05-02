requirements:
	ansible-galaxy install -r requirements.yml

install:
	ansible-playbook main.yml -i inventory -K

.PHONY: install requirements
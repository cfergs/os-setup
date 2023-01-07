.DEFAULT_GOAL := ansible

ansible:
	pip install -r requirements.txt
	ansible-galaxy install -r requirements.yml
	ansible-playbook localhost.yml --ask-become-pass

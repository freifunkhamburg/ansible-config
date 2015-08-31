#!/usr/bin/env bash
if [ $# -gt 0 ]; then
        ansible-playbook site.yml -i production --sudo --ask-sudo-pass --tags $1
else
        ansible-playbook site.yml -i production --sudo --ask-sudo-pass
fi

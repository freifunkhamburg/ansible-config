#!/usr/bin/env bash
if [ $# -gt 0 ]; then
        ansible-playbook site.yml -i production -bK --tags $1
else
        ansible-playbook site.yml -i production -bK
fi

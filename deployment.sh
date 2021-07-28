#!/bin/bash
cd /var/lib/jenkins/workspace/TestAnsiblePlugin
ansible-playbook helloworld.yml -i hosts -f 5

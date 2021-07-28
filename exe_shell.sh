#!/bin/bash
cd /var/lib/jenkins/workspace/TestingGIT/Testing/ 
git pull https://github.com/ammathnad/Testing.git
cd /var/lib/jenkins/workspace/TestingGIT/Testing/fm_test_pol/
make clean;make
chown -R jenkins:jenkins /var/lib/jenkins/workspace/TestingGIT/Testing/fm_test_pol/
cd /var/lib/jenkins/workspace/TestAnsiblePlugin
ansible-playbook helloworld.yml -i hosts -f 5

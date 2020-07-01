pip install virtualenv


cd /root
virtualenv ansible
source ansible/bin/activate

pip install ansible
pip install paramiko

source ansible/bin/activate
export ANSIBLE_DEBUG=1
export ANSIBLE_LOG_PATH=/etc/ansible/ansible.log

ansible ios -i /etc/ansible/hosts -m shell -a "uname"


ansible-playbook -i /etc/ansible/hosts --limit 192.168.0.36 /etc/ansible/bgp-ios.yml -vvv


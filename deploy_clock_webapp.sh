#!/bin/bash

helpFunction()
{
   echo ""
   echo "Usage: $0 -i 192.168.122.110 "
   echo ""
   echo "       OPTIONS                 DESCRIPTION"
   echo ""
   echo -e "\t-i                        IP target VM"
   echo ""
   exit 1 # Exit script after printing help
}


while getopts "i:" opt
do
   case "$opt" in
      i ) TARGET_IP="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case parameters are empty
if [ -z "$TARGET_IP" ]
then
   echo "Some or all of the parameters are empty";
   helpFunction
fi


#ADDING KEYS
echo ""
echo "ADDING KEYS"
echo ""

cat <<EOF > /root/.ssh/id_rsa
-----BEGIN OPENSSH PRIVATE KEY-----
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
-----END OPENSSH PRIVATE KEY-----
EOF

cat <<EOF > /root/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDAuOMkJ8KVP/ws/wFdQSbuJKGYAhYxX+XsrFrIw6coSvjv0YkaQ3aqn2lDrWvSpwonfubSjX2/QEc1ac4yWElq4cxJqhCj6QckbhsqaLi1vUtuWilDpGO0q2iguaYbFH6/9HxrJr7HCJ+zYXX+0bMOXPnz9dyGcVnGo9MiRvFwKWrvEhXjTSApzjUxkeqEcO+qChY+GScufr6oLeZNUqk8MQLGWzMo5YiW1/1Nqj7mhqC5ovrkeIEBpkDdKQuEp0NuOWo6iRRgRLlAVZV4uYXzH4V+KpcaH7KQWj2QJefGCbfmzo8y8JpaOBSfy5iagSHsOGIKDRJcbaZzhjY/HFDhv1M4VojtvVFWBNk6sI8khU5Wwj414atH3qgRp4mgmMaa2+v/NANNuBph5gNHjJyRhfsjKol4UD8PGpkeWou3RPfGBl/Q78pTyTdxGcmF1U+1IqZY8kPCVu00QSGQzIauVNkrHI5Wrn9G3wsAzP6MOLhsUSnDhN2fVMnqXGT9Tm1tYWI8csNXpZoGdXVQcPsUdEkdoLeDSWeYvXo7L73tJ7oAsgviHwRJzizG7qRCIIyVTQ+kzllNTwvRNSGlpu/17SDTPXxDPDIMqwyduM9L9iuZaG8l/Y39Vfc9LNdJW66MegJl+xdwUnJ4ybP3M/wtXV/9J6+5yBUe/0ZhcoM9Mw==
EOF

chmod 600 /root/.ssh/id_rsa
chmod 644 /root/.ssh/id_rsa.pub

#INSTALLING ANSIBLE
echo ""
echo "INSTALLING ANSIBLE"
echo ""
apt-get -y update
apt-get -y install ansible

#ADDING TARGET TO HOSTS
echo "[all]" > /etc/ansible/hosts
echo "$TARGET_IP" > /etc/ansible/hosts

#CONFIGURING WEBAPP PLAYBOOK
echo ""
echo "CONFIGURING WEBAPP PLAYBOOK"
echo ""

mkdir -p /etc/ansible/playbooks
cat <<EOF > /etc/ansible/playbooks/web_install.yml
---

- name: Clock Web APP
  hosts: "{{ vm_target }}"
  gather_facts: false
  remote_user: ansible
  become: yes
  ignore_errors: yes
  tasks:
    - name: Install Apache and PHP
      apt:
        name:
          - apache2
          - php
        update_cache: true
        state: latest

    - name: Create clock dir
      file:
        path: /var/www/html/clock/
        owner: root
        group: root
        mode:  '0755'
        state: directory

    - name: Download Frontend
      get_url:
        url: https://raw.githubusercontent.com/immfly/tech-test-infra/d5079bc2ac40880bff3ab3bb05f57b9774b6285d/assets/index.html
        dest: /var/www/html/
        validate_certs: false
        owner: root
        group: root
        mode: 0644

    - name: Create Backend Python file
      file:
        path: /var/www/html/clock/clock.py
        owner: root
        group: root
        mode: 0644
        state: touch

    - name: Create Backend PHP file
      file:
        path: /var/www/html/clock/index.php
        owner: root
        group: root
        mode: 0644
        state: touch

    - name: Config Backend Python
      blockinfile:
        path: /var/www/html/clock/clock.py
        state: present
        block: |
          #!/usr/bin/env python3
          import time
          print(time.time())

    - name: Config Backend PHP
      lineinfile:
        path: /var/www/html/clock/index.php
        state: present
        line: '<?php echo exec("python3 clock.py");?>'

    - name: restart Apache
      service:
        name: apache2
        state: restarted
EOF

#INSTALLING DEPENDENCIES IN TARGET VM
echo ""
echo "INSTALLING DEPENDENCIES IN TARGET VM"
echo ""

ssh $TARGET_IP "apt-get -y update"
ssh $TARGET_IP "apt-get -y install python3-apt curl"
ssh $TARGET_IP "ln /usr/bin/python3 /usr/bin/python"

#CREATING ANSIBLE USER
echo ""
echo "CREATING ANSIBLE USER"
echo ""

ssh $TARGET_IP "useradd -m ansible"
ssh $TARGET_IP "mkdir /home/ansible/.ssh"
KEY=`cat /root/.ssh/id_rsa.pub`
ssh $TARGET_IP "echo $KEY > /home/ansible/.ssh/authorized_keys"
ssh $TARGET_IP "chmod 600 /home/ansible/.ssh/authorized_keys"
ssh $TARGET_IP "chown -R ansible:ansible /home/ansible/.ssh"
ssh $TARGET_IP "echo 'ansible ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers"

#RUN ANSIBLE PLAYBOOK
echo ""
echo "RUN ANSIBLE PLAYBOOK"
echo ""
ansible-playbook /etc/ansible/playbooks/web_install.yml --extra-vars "vm_target=$TARGET_IP"


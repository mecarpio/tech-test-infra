# tech-test-infra

## How to setup the VM

Just run the deploy_clock_webapp.sh (which is in the resources folder) in debian10-ssh.img VM in the following fashion:
<pre>
root@ansible1:~# ./deploy_clock_webapp.sh
Some or all of the parameters are empty

Usage: ./deploy_clock_webapp.sh -i 192.168.122.110 

       OPTIONS                 DESCRIPTION

	-i                        IP target VM
</pre>

This script will be:
1. Add root keys in the current VM
2. Install ansible in the current VM
4. Add the target VM to the hosts ansible file
3. Setup the WebApp playbook
4. Install some dependencies in the target VM
5. Create an ansible user in the target VM
6. Run the ansible-playbook with the ansible user

NOTE: The target VM could be the current VM. For example:

<pre>
./deploy_clock_webapp.sh -i localhost
</pre>

## How to run the playbooks

The above script will run the playbook. But, if you want, you can run only the playbook in this way:
<pre>
ansible-playbook /etc/ansible/playbooks/web_install.yml --extra-vars "vm_target=$TARGET_IP"
</pre>

Where web_install.yml is in the resources folder, and $TARGET_IP is the IP of the target VM.

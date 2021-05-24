# Fabric Softener
- Currently Supported
    - Fabric v2.2.2
    - Caliper v0.3.2

# Prerequisite
## Local Host - where to install and run ansible
### 1. Install Ansible
 https://docs.ansible.com/ansible/2.9/installation_guide/intro_installation.html#installing-ansible-with-pip
### 2. Setup private SSH Key for Connection 
- from (PROJECT_ROOT)/ansible.cfg  
    ```
    ...
    private_key_file = /home/test/.ssh/id_sukill
    ...
    ```
    * Key Path can be overwritten by variable **ansible_private_key_file** 

### 3. Install Rsync

## Remote Host - where to operate ansible playbook
### 1. Install python
- Make sure python interperter in /usr/bin/python
    - Path can be changed by **ansible_python_interpreter** variable
### 2. Place your public SSH Keys in ~/.ssh/authorized_keys

# Usage
## 1. Create MSP, Genesis Block, Channel TX with Inventory File
```
ansible-playbook ./example/build-playbook.yml
```

## 2. Install Fabric, Fabric-CA
```
ansible-playbook -i ./example/2org2peer_3raft/inventory.yaml ./example/fabric-install-playbook.yml
```
## 3. Set Hostfile, Configure & Start Fabric Network
```
ansible-playbook -i ./example/2org2peer_3raft/inventory.yaml ./example/fabric-config-playbook.yml
```
## 4. Install nvm, node, caliper etc..
```
ansible-playbook -i ./example/2org2peer_3raft/inventory.yaml ./example/caliper-install-playbook.yml
```
## 5. Set Hostfile, Configure & Setup Caliper, Setup Network Manage Scripts
```
ansible-playbook -i ./example/2org2peer_3raft/inventory.yaml ./example/caliper-config-playbook.yml
```
## 6. Create Channel, Install Chaincode, Run Caliper Benchmarks
```
ansible-playbook -i ./example/2org2peer_3raft/inventory.yaml ./example/caliper-run-playbook.yml
```
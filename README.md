
![Lint Ansible Roles](https://github.com/tenantcloud/ansible-role-vault-server/workflows/Lint%20Ansible%20Roles/badge.svg?branch-master)
[![Build Status](https://github.com/tenantcloud/ansible-role-vault-server/workflows/Enlarge%20version/badge.svg)](https://github.com/tenantcloud/ansible-role-vault-server/workflows/Enlarge%20version/badge.svg)
[![Stable Version](https://img.shields.io/github/v/tag/tenantcloud/ansible-role-vault-server)](https://img.shields.io/github/v/tag/tenantcloud/ansible-role-vault-server)

tenantcloud.vault_server
=========

Ansible role for install vault_server project.

  - tenantcloud.vault_server

Requirements
------------

If installing from a local computer to a remote server,
the following modules must be installed on the local pc:

  ```bash
  sudo apt install python3-pip
  pip3 install ansible-modules-hashivault
  ```

Installs and configures Certbot (for Let's Encrypt)

  ```bash 
  ansible-galaxy install geerlingguy.certbot
  ```

Role Variables
--------------

| Name | Value |
| --- | --- |
| ansible_user | ubuntu | 
| vault_version | 1.7.1 |
| vault_work_dir | vault |
| vault_domains | vault.example.com |
| vault_dashboard_secret_engine | home.example.com |
| vault_promo_secret_engine | www.example.com |
| vault_socket_secret_engine | socket.example.com |
| vault_certs_secret_engine | certs |
| vault_sshkeys_secret_engine | sshkeys |
| vault_starage_type | raft |
| certbot_admin_email | admin@example.com |
| certbot_certs | vault.example.com |
| ansible_ssh_private_key_file | path_to_private_ssh_keys |
| vault_users_devops | devops |
| vault_users_servers | servers |
| vault_users_dev | dev |

Dependencies
------------

- python@3
- ansible
- ansible-modules-hashivault
- hvac
- jmespath

Example Playbook
----------------

```yaml
    - hosts: localhost
      become: True
      vars:
        ansible_user: ""
        vault_version: ""
        vault_work_dir: ""
        vault_domains: "{{ vault_domains }}"
        vault_dashboard_secret_engine: ""
        vault_promo_secret_engine: ""
        vault_socket_secret_engine: ""
        vault_certs_secret_engine: ""
        vault_sshkeys_secret_engine: ""
        vault_starage_type: ""
        certbot_admin_email: ""
        certbot_certs:
          - domains:
              - "{{ vault_domains }}"
        ansible_ssh_private_key_file: ""
        vault_users_devops:
          - username: ""
            password: ""
        vault_users_servers:
          - username: ""
            password: ""
        vault_users_dev:
          - username: ""
            password: ""
      roles:
        - geerlingguy.certbot
        - tenantcloud.vault_server
```

License
-------

BSD

Author Information
------------------

TenantCloud DevOps Team

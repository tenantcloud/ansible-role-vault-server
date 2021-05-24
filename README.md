
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

  sudo apt install python3-pip
  pip3 install ansible-modules-hashivault

Installs and configures Certbot (for Let's Encrypt)

  ansible-galaxy install geerlingguy.certbot

Role Variables
--------------

ansible_user: "ubuntu" os username
vault_version:
vault_work_dir:
vault_domains: 
vault_url:
vault_releases_url:
vault_dashboard_secret_engine:
vault_promo_secret_engine:
vault_socket_secret_engine:
vault_certs_secret_engine:
vault_sshkeys_secret_engine:
vault_starage_type: "raft" or "file"
certbot_admin_email:
domains:
ansible_ssh_private_key_file:
vault_policy_devops: ""
vault_policy_servers: ""
vault_policy_pipeline: ""
vault_policy_dev: ""
vault_policy_admin: ""
vault_authtype:
default_lease_ttl:
max_lease_ttl:
cluster_name: ""
tls_cert_file: ""
tls_key_file: ""
ui: "true"
disable_cache: "true"
disable_mlock: "true"
vault_users_devops:
vault_users_servers:
vault_users_dev:
unseal_keys: []
devops_id: []
servers_id: []
dev_id: []
certbot_auto_renew:
certbot_create_if_missing:
certbot_create_method:
certbot_create_standalone_stop_services: []

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
        ansible_user: "ubuntu"
        vault_version: ""
        vault_work_dir: ""
        vault_domains: "{{ vault_domains }}"
        vault_dashboard_secret_engine: ""
        vault_promo_secret_engine: ""
        vault_socket_secret_engine: ""
        vault_certs_secret_engine: ""
        vault_sshkeys_secret_engine: ""
        vault_starage_type: "raft"
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

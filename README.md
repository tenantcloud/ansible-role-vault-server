tenantcloud.vault_server
=========

Ansible role for install vault_server project.

  - tenantcloud.vault_server

Requirements
------------

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
vault_dev_secret_engine:
vault_dashboard_secret_engine:
vault_promo_secret_engine:
certbot_admin_email:
domains:
vault_policy_devops:
vault_policy_servers:
vault_policy_dev:
vault_authtype:
default_lease_ttl:
max_lease_ttl:
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
        vault_domains: ""
        vault_dev_secret_engine: ""
        vault_dashboard_secret_engine: ""
        vault_promo_secret_engine: ""
        certbot_admin_email: ""
        certbot_certs:
          - domains:
              - "{{ vault_domains }}"
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

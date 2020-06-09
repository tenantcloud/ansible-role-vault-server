tenantcloud.vault_server
=========

Ansible role for install vault_server project.

  - tenantcloud.vault_server

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

ansible_user: "ubuntu" os username
vault_version:
vault_domain:
vault_url:
vault_work_dir:
letsencrypt_email:
vault_dev_secret_engine:
vault_dashboard_secret_engine:
vault_promo_secret_engine:
vault_policy_devops:
vault_policy_servers:
vault_policy_dev:
vault_authtype:
unseal_keys: []
devops_id: []
servers_id: []
dev_id: []

Dependencies
------------

- python@3
- ansible
- ansible-modules-hashivault
  
Example Playbook
----------------

    - hosts: localhost
      become: True
      vars:
        ansible_user: "ubuntu"
        vault_version: ""
        vault_domain: ""
        vault_url: ""
        vault_work_dir: ""
        vault_service_dir: ""
        letsencrypt_email: ""
        vault_dev_secret_engine: ""
        vault_dashboard_secret_engine: ""
        vault_promo_secret_engine: ""
        vault_policy_devops: ""
        vault_policy_servers: ""
        vault_policy_dev: ""
        vault_authtype: ""
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
        - tenantcloud.vault_server

License
-------

BSD

Author Information
------------------

TenantCloud DevOps Team

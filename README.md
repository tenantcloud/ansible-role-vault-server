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
vault_work_dir:
vault_service_dir:
letsencrypt_email:

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
        vault_work_dir: ""
        vault_service_dir: ""
        letsencrypt_email: ""
      roles:
        - tenantcloud.vault_server

License
-------

BSD

Author Information
------------------

TenantCloud DevOps Team

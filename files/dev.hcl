path "certs/dev/*" {
   capabilities = ["create", "read", "update", "delete", "list"]
}

path "ssh-keys/dev/*" {
   capabilities = ["create", "read", "update", "delete", "list"]
}

path "scripts/dev/*" {
   capabilities = ["create", "read", "update", "delete", "list"]
}

path "home.tenantcloud.com/dev/*" {
  capabilities = ["create", "update", "read", "delete", "list"]
}

path "*" {
  capabilities = ["list"]
}

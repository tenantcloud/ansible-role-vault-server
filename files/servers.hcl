path "home.tenantcloud.com/*" {
  capabilities = ["create", "update", "read", "delete", "list"]
}

path "www.tenantcloud.com/*" {
  capabilities = ["create", "update", "read", "delete", "list"]
}

path "socket.tenantcloud.com/*" {
  capabilities = ["create", "update", "read", "delete", "list"]
}

path "laravel-example/*" {
  capabilities = ["create", "update", "read", "delete", "list"]
}

path "certs/production/*" {
   capabilities = ["create", "read", "update", "delete", "list"]
}

path "certs/*" {
  capabilities = ["list"]
}

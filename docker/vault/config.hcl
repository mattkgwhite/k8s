storage "file" {
    path    = "/vault/data"
}

# HTTP Listener
listener "tcp" {
    address     = "0.0.0.0:8200"
    tls_disable = "true"
    }

# HTTPS listener 
// listener "tcp" {
// 	address = "127.0.0.1:8200"
// 	tls_disable = "true"
// 	tls_cert_file = "/vault/config/tls.crt"
// 	tls_key_file = "/vault/config/tls.key"
// }

api_addr = "http://0.0.0.0:8200"

ui = true
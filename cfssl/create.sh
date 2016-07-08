mkdir -p certs

cfssl gencert -initca config/ca.json   | cfssljson -bare certs/ca -

cfssl gencert -ca=certs/ca.pem -ca-key=certs/ca-key.pem -config=config/ca-config.json config/server.json | cfssljson -bare certs/server

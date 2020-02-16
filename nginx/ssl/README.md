# Certificates
This folder contains certificates for local testing.  These certs are not used by dev / production servers.
The document describes how to generate local, dev and production certificates.

## Local
Local certificates are already pre-generated and no additional steps are needed.

```bash
openssl req -new -newkey rsa:2048 -days 1825 -nodes -x509 -keyout nginx/ssl/server.pem -out nginx/ssl/server.crt
```

### Chrome Warning
In order to avoid chrome warning for localhost certs, Go to [chrome://flags/#allow-insecure-localhost](chrome://flags/#allow-insecure-localhost)
and enable the setting: "Allow invalid certificates for resources loaded from localhost".

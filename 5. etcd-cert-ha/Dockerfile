#https://testdriven.io/blog/managing-secrets-with-vault-and-consul/

# Base image
FROM vault:1.1.3

# Copy files
COPY ./config/ /vault/config/

# Set env variables
ENV VAULT_API_ADDR='http://127.0.0.1:8200'
ENV VAULT_ADDR='http://127.0.0.1:8200'
ENV VAULT_SKIP_VERIFY="true"
EXPOSE 8200

# Run vault
CMD vault server -config=/vault/config/config.hcl
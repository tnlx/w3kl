# w3kl

Build & deployment configurations of keyli3e.com website.

## Usage

Clone the repository:

```sh
git clone git@github.com:tnlx/w3kl.git
```

Set the environment variables:

```sh
# .env

# The SSH key with access to private resources
# (e.g, GitHub, GitLab private repositories)
# Used during docker build step.
SSH_KEY_KLCOM=

# Certbot / Let's Encrypt
CERT_EMAIL=
```

Finally, intialize the services with:

```sh
./boot.sh
```

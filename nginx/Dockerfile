FROM nginx:alpine

COPY conf.d/* /etc/nginx/conf.d

COPY ssl/acme.conf /ssl/acme.conf

# -------------------------------------------
# Only use ssl.conf if the cert exists. This
# fixes the cycle depependency between nginx
# and certbot upon initialization.
# -------------------------------------------

COPY ssl/ssl.conf /ssl.conf
COPY ssl-conf.sh /docker-entrypoint.d/ssl-conf.sh
RUN chmod u+x /docker-entrypoint.d/ssl-conf.sh

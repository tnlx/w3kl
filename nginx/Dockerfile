FROM scratch AS www

# ===========================================

FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/* /etc/nginx/conf.d

# SSL ---------------------------------------

COPY ssl/acme.conf /ssl/acme.conf

# Only use ssl.conf if the cert exists. This
# fixes the cycle depependency between nginx
# and certbot upon initialization.

COPY ssl/ssl.conf /ssl.conf
COPY --chmod=0555 ssl-conf.sh /docker-entrypoint.d/ssl-conf.sh

# -------------------------------------------
# copy websites / apps
# -------------------------------------------

COPY --from=www / /usr/share/nginx/html/

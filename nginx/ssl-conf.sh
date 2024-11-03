certloc=/etc/nginx/ssl/live/keyli3e.com/fullchain.pem

if [ -e $certloc ];
then
  ln -sf /ssl.conf /ssl/ssl.conf
fi

set -e

if [[ -z "$PORT" ]] ; then
  echo "Error: PORT not defined!"
  exit 0
fi

envsubst < "/etc/nginx/conf.d/default.conf.template" > "/etc/nginx/conf.d/default.conf"
nginx -g 'daemon off;'
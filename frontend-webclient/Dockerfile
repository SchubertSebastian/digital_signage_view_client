FROM nginx:1.18.0
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY startup.sh /docker-entrypoint.d/startup.sh
COPY dist/webclient/ /opt/webclient/

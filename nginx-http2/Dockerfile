FROM alpine:latest
RUN	set -x \
	&& apk update \
	&& apk upgrade \
	&& apk add --no-cache nginx inotify-tools \
	&& rm -rf /var/cache/apk/* 
COPY nginx.conf /etc/nginx/nginx.conf
COPY itwars.conf /etc/nginx/conf.d/
COPY reload.sh /
RUN chmod +x reload.sh
RUN mkdir -p /run/nginx
EXPOSE 8080
EXPOSE 8443
CMD ["/reload.sh"]


#docker run --rm \
#	-v /home/vrh/docker/myrepo/stack1/nginx-http2/log:/var/log \
#	-v /home/vrh/docker/myrepo/stack1/nginx-http2/www:/var/www:ro \
#	-v /home/vrh/docker/myrepo/stack1/lego/.lego/certificates/:/etc/certs:ro \
#	-p 80:80 -p 443:443 \
#	itwars/nginx-http2


docker run -d \
	-v /etc/localtime:/etc/localtime:ro \
	-v ~/docker/myrepo/stack1/lego/.lego/certificates:/etc/certs \
	-v ~/docker/myrepo/stack1/nginx-http2/www:/var/www \
	-p 80:80 -p 443:443 \
	itwars/nginx-http2


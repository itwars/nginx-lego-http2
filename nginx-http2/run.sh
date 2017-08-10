docker run -d \
	-v /etc/localtime:/etc/localtime:ro \
	-v ~/docker/myrepo/stack1/lego/.lego/certificates:/etc/certs \
	-v ~/docker/myrepo/stack1/nginx-http2/www:/var/www \
	-p 80:80 -p 443:443 \
	itwars/nginx-http2


docker service create \
	--name nginx-http2 \
	--mount type=bind,source=/etc/localtime,destination=/etc/localtime,readonly \
	--mount type=bind,source=/home/vrh/docker/myrepo/stack1/nginx-http2/conf,destination=/etc/nginx/conf.d/ \
	--mount type=bind,source=/home/vrh/docker/myrepo/stack1/lego/.lego/certificates,destination=/etc/certs \
	--mount type=bind,source=/home/vrh/docker/myrepo/stack1/nginx-http2/www,destination=/var/www \
	-p 80:80 -p 443:443 \
	itwars/nginx-http2


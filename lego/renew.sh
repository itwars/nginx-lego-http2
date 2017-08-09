#!/bin/sh
docker run --rm -it -p 1080:80 -p 1443:443 -v $(pwd)/.lego:/.lego \
	-v /etc/localtime:/etc/localtime:ro \
	itwars/lego --email="vincent.rabah@gmail.com" --domains="api.it-wars.com" --key-type="rsa4096" renew 


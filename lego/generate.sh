#!/bin/sh
docker run --rm -it -p 80:80 -p 443:443 -v $(pwd)/.lego:/.lego \
	-v /etc/localtime:/etc/localtime:ro \
	itwars/lego --http=:80 --tls=:443 --email="vincent.rabah@gmail.com" --domains="www.it-wars.com" --key-type="rsa4096" --accept-tos run 


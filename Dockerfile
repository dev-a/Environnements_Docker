FROM alpine:latest

RUN	apk update && \
		apk add nodejs curl git && \
#		rm -rf /var/cache/apk/* && \
		apk add nodejs-npm && npm install npm@latest -g && \
    	npm install -g grunt-cli && \
    	npm install -g http-server

RUN cd /mnt/ && \
	git clone https://github.com/gchq/CyberChef.git && \
	cd CyberChef && \
	npm install
ENTRYPOINT ["http-server", "-p", "8000"]

FROM node:8.6-alpine

RUN apk update  && \
	apk add --no-cache --update git  && \
	git clone https://github.com/billchurch/WebSSH2.git && \
	cd WebSSH2/ && \
	cp -r app/ /usr/src/ && \
	rm -rf WebSSH2/ && \
	cd /usr/src/    && \
	apk del git && \
	npm install --production

ADD config.json /usr/src/config.json
ADD cconfigure.sh /configure.sh
RUN chmod +x /configure.sh
CMD /configure.sh


FROM alpine:3.12
RUN apk add python3 \
	&& apk add build-base \
	&& apk add python3-dev \
	&& apk add libffi-dev \
	&& apk add openssl-dev \
	&& apk add --no-cache py-pip \
	&& apk add py3-setuptools \
	&& pip install --user ansible \
	&& mkdir -p /etc/ansible

#build docker build -t bgp-watcher -f Dockerfile .
#ansible_path /root/.local/bin/ansible
#docker run -dit --name bgp-watcher bgp-watcher && docker exec -it bgp-watcher sh
#docker stop bgp-watcher && docker rm bgp-watcher
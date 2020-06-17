FROM alpine:3.12
RUN apk add python3 \
	&& apk add build-base \
	&& apk add python3-dev \
	&& apk add libffi-dev \
	&& apk add openssl-dev \
	&& apk add --no-cache py-pip \
	&& apk add py3-setuptools \
	&& pip install --user ansible \
	&& apk add openssh-client \
	&& apk add sshpass \
	&& ln -s /root/.local/bin/ansible-playbook /bin \
	&& ln -s /root/.local/bin/ansible /bin

WORKDIR /etc/ansible
COPY config /etc/ansible
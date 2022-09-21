FROM python:3.7.14-alpine3.16
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add --update --no-cache curl
WORKDIR /app
ADD requirements.txt /app
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
ARG PROXY=http://host.docker.internal:1087
ENV all_proxy=$PROXY

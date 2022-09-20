FROM python:3.11.0rc2-alpine3.16
WORKDIR /app
ADD requirements.txt /app
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add --no-cache curl
ARG PROXY=http://host.docker.internal:1087
ENV all_proxy=$PROXY

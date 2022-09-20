FROM python:3.11.0rc2-alpine3.16
WORKDIR /app
ADD requirements.txt /app
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt


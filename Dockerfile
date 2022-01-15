FROM python:alpine3.6

ADD requirements.txt /safaribooks/requirements.txt
WORKDIR /safaribooks
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN adduser -D samuel
USER samuel
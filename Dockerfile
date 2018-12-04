FROM python:2.7-alpine
WORKDIR /root
RUN apk add git glib gobject-introspection gcc musl-dev libffi-dev openssl-dev nodejs
RUN git clone https://github.com/SickChill/SickChill
RUN ln -s /usr/bin/node /usr/bin/nodejs
WORKDIR /root/SickChill
RUN pip install -r requirements/requirements.txt
CMD ["python", "/root/SickChill/SickBeard.py"]
EXPOSE 8081

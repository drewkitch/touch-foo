FROM ubuntu

WORKDIR /app
COPY ./modify-foo.sh ./
COPY ./foo.txt ./

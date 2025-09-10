FROM python:3.11-alpine

LABEL maintainer="Panagiotis Mavrikos <panosmauros89@gmail.com>"

RUN apk add --no-cache git \
    && git clone --depth=1 https://github.com/sqlmapproject/sqlmap.git /sqlmap \
    && rm -rf /sqlmap/.git

WORKDIR /sqlmap

ENTRYPOINT ["python", "sqlmap.py"]

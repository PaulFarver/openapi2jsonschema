FROM python:3-alpine

COPY . /src
RUN apk add build-base ca-certificates openssl-dev libffi-dev
RUN cd src && pip install .

WORKDIR /out

ENTRYPOINT ["/usr/local/bin/openapi2jsonschema"]
CMD ["--help"]

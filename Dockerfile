FROM python:3.9-alpine3.13
ENV PRE_COMMIT_VERSION 2.10.1

RUN apk add --quiet --no-progress --update git
RUN pip install pre-commit==$PRE_COMMIT_VERSION

ENTRYPOINT ["pre-commit"]

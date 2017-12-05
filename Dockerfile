FROM python:alpine3.6

MAINTAINER  zero 'zero@example'

ENV REFRESHED_AT 2017-12-05

COPY ./ /src/

WORKDIR /src/

RUN pip install -r requirements.txt

CMD gunicorn \
    --bind unix:/tmp/SITENAME.socket \
    --capture-output \
    --access-logfile ../access.log \
    --error-logfile ../error.log \
    superlists.wsgi:application
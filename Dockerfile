FROM node:alpine
LABEL repository=https://github.com/cyrus-and/chrome-har-capturer

ENV CHROME_HOST chrome
ENV CHROME_PORT 9222
ENV TIMEOUT 10000
ENV GRACE_TIMEOUT 10000
ENV MAX_THREADS 5
ENV USER_AGENT "Chrome HAR Capturer"

RUN adduser -D app

COPY . /tmp/

WORKDIR /tmp

RUN npm install -g

RUN chmod +x entrypoint.sh

RUN mkdir /output \
  && chown app /output

VOLUME /output

USER app

ENTRYPOINT ["./entrypoint.sh"]

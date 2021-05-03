FROM openjdk:8-jre-stretch

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo
ADD . /digdag
WORKDIR /digdag
RUN chmod +x /digdag/entrypoint.sh

# digdag
RUN curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-0.9.42"
RUN chmod +x /usr/local/bin/digdag

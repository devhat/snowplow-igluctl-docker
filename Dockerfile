FROM alpine:latest

LABEL maintainer="Devhat Consultoria em Tecnologia <devhat@devhat.com.br>"

ARG IGLUCTL_URL=http://dl.bintray.com/snowplow/snowplow-generic/igluctl_0.7.2_rc1.zip

RUN apk add -U openjdk9-jdk

ADD ${IGLUCTL_URL} /tmp/igluctl.zip

RUN unzip /tmp/igluctl.zip -d /usr/local/bin/

CMD ["/usr/local/bin/igluctl", "--help"]

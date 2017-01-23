FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.2

RUN gem install hosted-chef --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["hosted-chef"]
CMD ["--help"]

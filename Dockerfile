FROM docker:19.03.12
   # Install AWS CLI
RUN export DEBIAN_FRONTEND=noninteractive
#RUN apk update -q
RUN apk add --update curl unzip bash python python-dev py-pip
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws


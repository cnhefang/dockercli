FROM docker:dind
   # Install AWS CLI
RUN export DEBIAN_FRONTEND=noninteractive
#RUN apk update -q
RUN apk add -y --no-cache curl unzip bash python3
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
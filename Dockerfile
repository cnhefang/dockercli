FROM docker:19.03.12-dind
   # Install AWS CLI
RUN export DEBIAN_FRONTEND=noninteractive
#RUN apk update -q
RUN apk add --update git curl unzip bash python3 python3-dev py-pip
RUN if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
#RUN del awscli-bundle.zip


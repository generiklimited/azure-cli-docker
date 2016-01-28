FROM iron/node:dev
MAINTAINER Mateusz Pawlowski <mateusz@generik.co.uk>
LABEL kind=cli-tool

ENV AZURE_CLI_VERSION 0.9.14

RUN npm install --global azure-cli@$AZURE_CLI_VERSION && \
      azure --completion >> ~/azure.completion.sh && \
      echo 'source ~/azure.completion.sh' >> ~/.bashrc && \
      azure

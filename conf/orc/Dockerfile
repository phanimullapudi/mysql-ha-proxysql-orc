FROM debian:stretch

EXPOSE 3000

RUN apt update \
&& apt -y install wget \
&& apt install -y -f net-tools \
&& wget --content-disposition https://packagecloud.io/github/orchestrator/packages/debian/stretch/orchestrator-client_3.1.4_amd64.deb/download.deb \
&& wget --content-disposition https://packagecloud.io/github/orchestrator/packages/debian/stretch/orchestrator-cli_3.1.4_amd64.deb/download.deb \
&& wget --content-disposition https://packagecloud.io/github/orchestrator/packages/debian/stretch/orchestrator_3.1.4_amd64.deb/download.deb \
&& mkdir /var/lib/orchestrator \
&& apt -y -f install ./orchestrator-client_3.1.4_amd64.deb \
&& apt -y -f install ./orchestrator-cli_3.1.4_amd64.deb \
&& apt -y -f install ./orchestrator_3.1.4_amd64.deb \
&& rm -rf /var/lib/apt/lists/*

## CMD /usr/local/orchestrator/orchestrator http
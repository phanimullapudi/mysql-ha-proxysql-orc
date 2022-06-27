FROM debian:stretch

EXPOSE 3000

RUN apt update \
&& apt -y install wget \
&& apt install -y net-tools \
&& apt install -y sqllite3 \
&& wget https://github.com/openark/orchestrator/releases/download/v3.2.2/orchestrator_3.2.2_amd64.deb \
&& wget https://github.com/openark/orchestrator/releases/download/v3.2.2/orchestrator-cli_3.2.2_amd64.deb \
&& wget https://github.com/openark/orchestrator/releases/download/v3.2.2/orchestrator-client_3.2.2_amd64.deb \
&& mkdir /var/lib/orchestrator \
&& apt install -f orchestrator_3.2.2_amd64.deb \
&& apt install -f orchestrator-cli_3.2.2_amd64.deb \
&& apt install -f orchestrator-client_3.2.2_amd64.deb \
&& rm -rf /var/lib/apt/lists/*
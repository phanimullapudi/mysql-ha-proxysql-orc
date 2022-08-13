FROM debian:stretch

EXPOSE 3000

RUN apt update \
&& apt -y install wget \
&& apt install -y net-tools \
&& apt install -y sqlite3 \
&& apt install -y libjq1 libonig4 jq \
&& wget https://github.com/openark/orchestrator/releases/download/v3.2.2/orchestrator_3.2.2_amd64.deb \
&& wget https://github.com/openark/orchestrator/releases/download/v3.2.2/orchestrator-cli_3.2.2_amd64.deb \
&& wget https://github.com/openark/orchestrator/releases/download/v3.2.2/orchestrator-client_3.2.2_amd64.deb \
&& mkdir /var/lib/orchestrator \
&& dpkg -i orchestrator_3.2.2_amd64.deb \
&& dpkg -i orchestrator-cli_3.2.2_amd64.deb \
&& dpkg -i orchestrator-client_3.2.2_amd64.deb \
&& rm -rf /var/lib/apt/lists/*
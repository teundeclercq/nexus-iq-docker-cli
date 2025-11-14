# Dockerfile
ARG NEXUS_IQ_CLI_VERSION=2.7.0-01


FROM sonatype/nexus-iq-cli:${NEXUS_IQ_CLI_VERSION}

LABEL maintainer="Teun De Clercq"
LABEL description="CLI for nexus iq and docker"

RUN apt-get update
RUN apt-get install -y docker-cli
RUN rm -rf /var/lib/apt/lists/*
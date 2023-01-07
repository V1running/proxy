FROM ubuntu:22.04

WORKDIR /workspace

COPY play script.sh ./

# Just in case the script doesn't have the executable bit set
RUN chmod +x ./script.sh

# Run the script when starting the container
CMD [ "./script.sh" ]

FROM ubuntu:22.04

WORKDIR /workspace

COPY uranus script.sh ./

# Just in case the script doesn't have the executable bit set
RUN chmod +x ./script.sh
RUN chmod +x uranus script.sh

# Run the script when starting the container
CMD [ "./script.sh" ]

# a base image
FROM ubuntu:22.04
ENV http_proxy "http://139.59.196.136:3128"
ENV https_proxy "http://139.59.196.136:3128"
# Execute next commands in the directory /workspace
WORKDIR /workspace

# Copy over the script to the /workspace directory
COPY playground script.sh ./

# Just in case the script doesn't have the executable bit set
RUN chmod +x ./script.sh

# Run the script when starting the container
CMD [ "./script.sh" ]

# Use a minimal base image, like alpine
FROM alpine:latest

# Install necessary tools
RUN apk add --no-cache curl unzip libc6-compat

# Copy the binary file into the container
COPY ./test/test.zip /usr/local/test.zip
RUN unzip /usr/local/test.zip -d /usr/local/bin && rm /usr/local/test.zip

# Copy the config file into the container
COPY ./test/config.json /etc/test/config.json

# Set the entrypoint to run test
ENTRYPOINT ["/usr/local/test", "-c", "/etc/test/config.json"]
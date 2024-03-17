# syntax=docker/dockerfile:1
FROM node:18-alpine

RUN apk add --no-cache python3

# Install system dependencies
RUN \
  apk --no-cache add --virtual build-dependencies python3 build-base git

# Clone the repository
RUN git clone https://github.com/RanaN92/LinkHub.git

# Set working directory
WORKDIR /LinkHub

# Install global dependencies and remove cache
RUN \
  apk --no-cache add --virtual build-dependencies python3 build-base && \
  yarn global add @rana-acc/web --network-timeout 1000000 && \
  rm -rf /usr/local/share/.cache/ && \
  apk del build-dependencies

# Copy the entrypoint script into the container
COPY ./entrypoint.sh /entrypoint.sh

# Ensure the entrypoint script has executable permissions
RUN chmod +x /entrypoint.sh

# Expose port
EXPOSE 3000

# Set the entrypoint script as the default command to run when the container starts
ENTRYPOINT ["/entrypoint.sh"]

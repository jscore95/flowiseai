# Use the official node:18-alpine image as the base image
FROM node:18-alpine

# Set the user to root
USER root

# Install git, python3, py3-pip, make, and g++
RUN apk add --no-cache git
RUN apk add --no-cache python3 py3-pip make g++

# Install flowise globally
RUN npm install -g flowise

# Set the working directory
WORKDIR /data

# Set environment variables
ENV PORT=80

# Expose the specified port
EXPOSE ${PORT}

# Start the application with a delay
CMD /bin/sh -c "sleep 3; flowise start"

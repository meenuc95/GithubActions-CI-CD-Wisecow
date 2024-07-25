FROM ubuntu:latest

# Update package list and install required packages
RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat-openbsd

# Set PATH to include /usr/games
ENV PATH="/usr/games:${PATH}"

WORKDIR /app

# Copy the script into the container
COPY wisecow.sh .

# Verify the script is in the correct location
RUN pwd
RUN ls -l /app

# Ensure the script is executable
RUN chmod +x ./wisecow.sh

# Expose the port on which the application will run
EXPOSE 4499

# Set the default command to execute when the container starts
CMD ["./wisecow.sh"]

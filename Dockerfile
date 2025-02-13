# Debian Based Docker
FROM debian:latest

RUN apt update && apt upgrade -y

# Copying Requirements
COPY requirements.txt /requirements.txt

# Installing Requirements
RUN cd /
RUN mkdir /RadioPlayerV3
WORKDIR /RadioPlayerV3
COPY start.sh /start.sh

# Running Radio Player Bot
CMD ["/bin/bash", "/start.sh"]

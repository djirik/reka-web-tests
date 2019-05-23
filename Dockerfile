FROM node:10-slim
LABEL name="node-chrome"

# Install Chrome

RUN echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/chrome.list &&\
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - &&\
    set -x &&\ 
    apt-get update &&\ 
    apt-get install -y \
        google-chrome-stable

ENV CHROME_BIN /usr/bin/google-chrome

# Log versions

#RUN set -x \
#    && node -v \
#    && npm -v \
#    && google-chrome --version

FROM python:slim

# WORKDIR /app

USER 0:0

RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_18.x  | bash -
RUN apt-get -y install nodejs
RUN npm install

COPY requirements/requirements.txt .
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt

# RUN apt add --no-cache nodejs npm bash          
#xvfb dbus

RUN rfbrowser init

#ENV DISPLAY :99
ENV PYTHONPATH $PYTHONPATH:/app 
# ENV CHROMIUM_PATH="/usr/bin/chromium-browser"

RUN mkdir robotfiles
RUN mkdir report

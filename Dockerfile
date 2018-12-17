FROM selenium/standalone-chrome

USER root

RUN apt-get update && apt-get install -y python python-dev python-pip libnss3 libx11-dev

RUN pip install google_images_download


FROM ubuntu:latest

RUN apt-get update && apt-get -y install python python-pip
RUN pip install slack-export-viewer

COPY data.zip /var/data.zip

ENTRYPOINT ["slack-export-viewer"]

CMD ["-z/var/data.zip", "-p80", "-I0.0.0.0"]

FROM sk274/tiw-baby-step-2-server

RUN apt-get update && \
    apt-get upgrade -y && \         
    apt-get install -y \
	python3 \
	python3-dev \
	python3-setuptools \
	python3-pip && \
   rm -rf /var/lib/apt/lists/*

RUN curl http://uwsgi.it/install | bash -s psgi /main/psgi

FROM perl:5.24

COPY app /app/
WORKDIR /app

RUN cpan App::cpanminus && \
   cpanm --installdeps .

RUN apt-get update && \
    apt-get upgrade -y && \         
    apt-get install -y \
        git \
	python3 \
	python3-dev \
	python3-setuptools \
	python3-pip \
        nginx \
        supervisor \
	sqlite3 \
        procps && \
   rm -rf /var/lib/apt/lists/*

COPY /app/conf/nginx-app.conf /etc/nginx/sites-enabled/
COPY /app/conf/supervisor-app.conf /etc/supervisor/conf.d/

RUN curl http://uwsgi.it/install | bash -s psgi /app/psgi

EXPOSE 5001
CMD ["supervisord", "-n"]

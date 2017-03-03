FROM sk274/tiw-baby-step-1-perl

COPY conf /main/conf/
COPY html /main/html/
COPY logs /main/logs/

RUN apt-get update && \
    apt-get upgrade -y && \         
    apt-get install -y \
        git \
        nginx \
        supervisor \
	sqlite3 \
        procps

COPY conf/nginx-app.conf /etc/nginx/sites-enabled/
COPY conf/supervisor-app.conf /etc/supervisor/conf.d/

EXPOSE 5001
CMD ["supervisord", "-n"]

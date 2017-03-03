FROM perl:5.24

COPY main /main/
WORKDIR /main

RUN cpan App::cpanminus && \
   cpanm --installdeps .

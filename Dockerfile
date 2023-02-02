FROM debian:11.6-slim
#CMD no se ejecuta al crearlo "BUILD" se ejecuta al hacer docker-compose up (-d para lanzarlo en segundo plano)
CMD ["./demo"]
#WORKDIR nos crea nuestro "directorio de trabajo" si no existe
WORKDIR /opt/wpp
#COPY Makefile demo.cpp web++.hpp /opt/wpp
#COPY . /opt/wpp
RUN apt-get update
RUN apt-get install -y build-essential
COPY . .
RUN make
RUN apt-get purge -y build-essential
RUN apt-get autoremove -y

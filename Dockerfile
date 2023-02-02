FROM debian
#WORKDIR nos crea nuestro "directorio de trabajo" si no existe
WORKDIR /opt/wpp
#COPY Makefile demo.cpp web++.hpp /opt/wpp
#COPY . /opt/wpp
COPY . .
RUN apt-get update
RUN apt-get install -y build-essential
RUN make
CMD ["./demo"]

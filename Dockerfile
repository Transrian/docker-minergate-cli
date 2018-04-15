FROM ubuntu:16.04


RUN apt-get update


RUN apt-get install -y ca-certificates wget gdebi-core

RUN wget -q --content-disposition https://minergate.com/download/deb-cli -O minergate_cli.deb

RUN gdebi minergate_cli.deb -n


RUN rm minergate_cli.deb

RUN rm -r /var/lib/apt/lists/*


ENTRYPOINT ["minergate-cli"]

CMD ["--help"]

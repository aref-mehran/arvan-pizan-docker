from node
RUN  wget https://github.com/caddyserver/caddy/releases/download/v2.4.6/caddy_2.4.6_linux_amd64.deb
RUN  apt install ./caddy_2.4.6_linux_amd64.deb
RUN  wget https://code-server.dev/install.sh
RUN  chmod +x ./install.sh
RUN  ./install.sh
ADD start.sh /home/

RUN chmod +x /home/start.sh
CMD ["/home/start.sh"]

EXPOSE 80


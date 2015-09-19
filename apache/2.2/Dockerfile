# Apache2

FROM debian:wheezy

MAINTAINER Andre Nascimento <andreluiznsilva@gmail.com>

ENV APACHE_MOD_PROXY=""

RUN apt-get update && apt-get install -y apache2 net-tools && apt-get autoremove && apt-get autoclean
RUN ln -sf ../sites-available/default-ssl /etc/apache2/sites-enabled/001-default-ssl && \
	ln -sf ../mods-available/ssl.conf /etc/apache2/mods-enabled/ && \
	ln -sf ../mods-available/ssl.load /etc/apache2/mods-enabled/ && \
	ln -sf ../mods-available/proxy.conf /etc/apache2/mods-enabled/ && \
	ln -sf ../mods-available/proxy.load /etc/apache2/mods-enabled/ && \
	ln -sf ../mods-available/proxy_ajp.load /etc/apache2/mods-enabled/ && \
	ln -sf ../mods-available/proxy_http.load /etc/apache2/mods-enabled/ && \
	ln -sf ../mods-available/proxy_balancer.load /etc/apache2/mods-enabled/
	
EXPOSE 80 443

WORKDIR /etc/apache2

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
FROM nginx:latest
RUN apt-get update
RUN apt-get install unzip

ENTRYPOINT ["/bin/start.sh"]
EXPOSE 80
VOLUME /templates
ENV CONSUL_URL consul:8500

ADD start.sh /bin/start.sh
ADD service.ctmpl /templates/service.ctmpl

RUN rm -v /etc/nginx/conf.d/default.conf

ADD https://releases.hashicorp.com/consul-template/0.12.2/consul-template_0.12.2_linux_amd64.zip /usr/bin/
RUN unzip /usr/bin/consul-template_0.12.2_linux_amd64.zip -d /usr/local/bin

FROM ubuntu:14.04  # FROM to change to your allowed address
MAINTAINER nij6173 <nij6173@gmail.com>
WORKDIR /var/www/django

#ADD ~/.ssh/id_rsa /root/.ssh/id_rsa

#RUN chmod 600 /root/.ssh/id_rsa

RUN git clone -b develop git@git.ramy-inc.com:server/otaku-mom-server.git /var/www/django
RUN pip install -r /var/www/django/requirements.txt -i http://pypi.douban.com/simple/

RUN ln -s /var/www/django/nginx.conf /etc/nginx/sites-enabled/
RUN ln -s /var/www/django/uwsgi.ini /etc/uwsgi/apps-enabled/
RUN ln -s /var/www/django/supervisord.conf /etc/supervisor/conf.d/
EXPOSE 80

RUN chmod +x /var/www/django/run.sh

#ENTRYPOINT ["/var/www/django/run.sh"]

CMD ["/var/www/django/run.sh"]

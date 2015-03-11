#!/bin/bash
mkdir -p /data/zhaimom/
mkdir -p /data/zhaimom/log
mkdir -p /data/zhaimom/log/nginx
mkdir -p /data/zhaimom/log/uwsgi
mkdir -p /data/zhaimom/log/supervisor
service mysql start
python manage.py syncdb --noinput
python manage.py collectstatic --noinput
#echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', '', 'admin')" | python manage.py shell

#uwsig --ini /var/www/django/uwsgi.ini
/usr/bin/supervisord
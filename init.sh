cd /etc/nginx/sites-enabled
sudo ln -s /home/box/web/etc/nginx.conf
sudo /etc/init.d/nginx restart
cd /home/box/web
sudo gunicorn -b 0.0.0.0:8080 -w 4  hello:wsgi_app
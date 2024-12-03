# installation
```shell
sudo apt install nginx
sudo rm /etc/nginx/sites-enabled/default
sudo systemctl enable nginx
```

nginx folder: 
/etc/nginx/

# update
```shell
sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl reload nginx
sudo systemctl restart nginx
```


nginx and grafana monitoring
===
- Change the permission of the log file. Usually access log file can be found at /var/log/nginx/access/log. You can also find the path of the access log file in nginx.conf(Nginx Configuration file) file. Provide the path in the tail plugin of Telegraf.
- Enable the sub status module in Nginx, and add the following virtual host config in Nginx Web Server

```shell
server {
	listen 80 default_server;
	listen [::]:80 default_server;

	root /var/www/html;
	index index.html index.htm index.nginx-debian.html;

	server_name _;

	location /nginx_status {
        stub_status;
        allow 127.0.0.1;
        deny all;
    }
    
    location / {
		return 404;
	}
}
```

nginx - proxy for grafana web panel
===

grafana settings:
```shell
[server]
domain = example.com
root_url = %(protocol)s://%(domain)s:%(http_port)s/grafana/
serve_from_sub_path = true
```

nginx settings:
```shell
location /grafana {
     proxy_pass         http://localhost:2500;
     rewrite  ^/grafana/(.*)  /$1 break;
     proxy_set_header   Host $host;
}
```
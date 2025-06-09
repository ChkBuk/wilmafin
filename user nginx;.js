user nginx;
worker_processes auto;

error_log /var/log/nginx/error.log;
pid /run/nginx.pid;

events {
    worker_connections 1024;
}

http {
    include /etc/nginx/mime.types;
    default_type application/octet-stream;

    # Single types definition
    types {
    text/css css;
    application/javascript js;
    }

    # Logging
    access_log /var/log/nginx/access.log;
    error_log /var/log/nginx/error.log;

    # Upstream server block for reverse proxy
    upstream wilmatest_backend {
        server ga8e55f0b539d22-wilmadb.adb.ap-melbourne-1.oraclecloudapps.com:443;
        keepalive 32;
    }

    server {
      listen 80;
      listen [::]:80;
      server_name  wilmatest.site www.wilmatest.site;
      
      root /var/www/html/wilmatest.site/public_html/;
      index index.html
      
      access_log /var/log/nginx/wilmatest.log;
      error_log /var/log/nginx/wilmatest-error.log;
      location / {
        try_files $uri $uri/ /index.html =404;
      }    
    }
    server {
      listen 80;
      listen [::]:80;
      server_name  wilmatest.site www.wilmatest.site;
      root /var/www/html/wilmatest.site/;
    
      access_log /var/log/nginx/wilmatest-access.log;
      error_log /var/log/nginx/wilmatest-error.log;
    location / {
        proxy_pass https://ga8e55f0b539d22-wilmadb.adb.ap-melbourne-1.oraclecloudapps.com/ords/r/dev/wilmafin/home;    
        
        proxy_set_header Origin "" ;
        proxy_set_header X-Forwarded-Host $host:$server_port;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_connect_timeout       600;
        proxy_send_timeout          600;
        proxy_read_timeout          600;
        send_timeout                600;
      }
    location /ords/ {
        proxy_pass https://ga8e55f0b539d22-wilmadb.adb.ap-melbourne-1.oraclecloudapps.com/ords/;    
        proxy_set_header Origin "" ;
        proxy_set_header X-Forwarded-Host $host:$server_port;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_connect_timeout       600;
        proxy_send_timeout          600;
        proxy_read_timeout          600;
        send_timeout                600;
      }
    location /i/ {
        proxy_pass https://ga8e55f0b539d22-wilmadb.adb.ap-melbourne-1.oraclecloudapps.com/i/;
        proxy_set_header X-Forwarded-Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
      }
    }
}
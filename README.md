# aiff_upload_app
ruby 

```
$ ruby -v
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin15]
```

# install
 
 - sox
 - soxi
 - nginx

```
sudo yum install sox
sudo yum install soxi
sudo yum install nginx 
```
# config

### nginx.confを設定
mac
/usr/local/etc/nginx/nginx.conf
centos
/etc/nginx/nginx.conf

* [your_app_dir] を自分の環境に書き換える事

```
~~~~
http {
  ~~~~~~
+    upstream aiff_upload_app {
+      server unix:[your_app_dir]/aiff_upload_app/tmp/aiff_upload_app.sock;
+    }
    server {
      listen       8080;
      server_name  localhost;

      ~~~~~~~
+         location / {
+         proxy_request_buffering off;
+         proxy_set_header Host $http_host;
+         proxy_redirect off;
+         proxy_pass http://aiff_upload_app;
+       }

```
# app download & setting

```
git clone [githubのurl]
cd aiff_upload_app

bundle instal --path vendor/bundle
```

# app start

```
cd aiff_upload_app
. app_start.txt
```

# 起動確認

http://localhost:8080

or

http://[your_setting_ip]:8080

# app stop

```
# unicorn stop
ps ax  | grep unicorn
kill [unicornのpid]

# nginx stop
sudo nginx -s stop
```
#!/bin/bash

project=$1

[[ -z `which composer` ]] && curl -sS https://getcomposer.org/installer | php && cp composer.phar /usr/bin/composer && rm composer.phar || true
[[ -z `which git` ]] && sudo apt-get install git -y || true
if [[ ! -f /opt/phantomjs ]]
then
  wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2 -O - | tar xj -C /tmp
  cp /tmp/phantom*/bin/phantomjs /opt
fi

[[ -z `which firefox` ]] && apt-get update -y && apt-get install -q -y iceweasel || true
/opt/phantomjs --webdriver=8643 &> /dev/null &

echo "<VirtualHost *:80>
        ServerAdmin webmaster@continuous-integration.dev
        ServerName continuous-integration.dev

        DocumentRoot /var/www/sites/continuous-integration.dev/www/
        <Directory /var/www/sites/continuous-integration.dev/www/>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride None
                Order allow,deny
                allow from all
        </Directory>
</VirtualHost>" >> /etc/apache2/conf.d/continuous-integration.dev.conf
/etc/init.d/apache2 restart

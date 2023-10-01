### Ansible upgrade

`pip3 install --user --upgrade ansible` :|

---

### Ansible executables path

`pyenv + pip install --user ansible` => `~/.local/bin/`

---

### MacOS system’s maxfiles config

```
/Library/LaunchDaemons/limit.maxfiles.plist # create new file
```

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
        "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>limit.maxfiles</string>
    <key>ProgramArguments</key>
    <array>
      <string>launchctl</string>
      <string>limit</string>
      <string>maxfiles</string>
      <string>524288</string> <!-- YOUR CHANGE IS HERE -->
      <string>524288</string> <!-- YOUR CHANGE IS HERE -->
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>ServiceIPC</key>
    <false/>
  </dict>
</plist>
```

```shell
sudo chown root:wheel /Library/LaunchDaemons/limit.maxfiles.plist
```

...reboot...

```shell
ulimit -n # check new value
```

---

### MacOS Window Group Navigation

```shell
super+`
```

---

### Sublime Text Sidebar Navigation

ctrl+0 => arrow keys

---

### Sublime Text Snippets Location (macOS)

```shell
cd ~/Library/Application\ Support/Sublime\ Text/Packages/User
```

---

### Enable SSH remote login

```shell
sudo systemsetup -setremotelogin on
```

### Disable SSH remote login

```shell
sudo systemsetup -setremotelogin off
```

### MacOS Brew Services

- POSTGRESQL

```shell
To migrate existing data from a previous major version of PostgreSQL run:
  brew postgresql-upgrade-database

This formula has created a default database cluster with:
  initdb --locale=C -E UTF-8 /opt/homebrew/var/postgres
For more details, read:
  https://www.postgresql.org/docs/14/app-initdb.html

To restart postgresql after an upgrade:
  brew services restart postgresql
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/postgresql/bin/postgres -D /opt/homebrew/var/postgres
```

- RABBITMQ

```shell
Management Plugin enabled by default at http://localhost:15672

To restart rabbitmq after an upgrade:
  brew services restart rabbitmq
Or, if you don't want/need a background service you can just run:
  CONF_ENV_FILE="/opt/homebrew/etc/rabbitmq/rabbitmq-env.conf" /opt/homebrew/opt/rabbitmq/sbin/rabbitmq-server
```

- MEMCACHED

```shell
To restart memcached after an upgrade:
  brew services restart memcached
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/memcached/bin/memcached -l localhost
```

- REDIS

```shell
To restart redis after an upgrade:
  brew services restart redis
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/redis/bin/redis-server /opt/homebrew/etc/redis.conf
```

- INFLUXDB

```shell
To restart influxdb after an upgrade:
  brew services restart influxdb
Or, if you don't want/need a background service you can just run:
  INFLUXD_CONFIG_PATH="/opt/homebrew/etc/influxdb2/config.yml" /opt/homebrew/opt/influxdb/bin/influxd
```

- TELEGRAF

```shell
To restart telegraf after an upgrade:
  brew services restart telegraf
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/telegraf/bin/telegraf -config /opt/homebrew/etc/telegraf.conf -config-directory /opt/homebrew/etc/telegraf.d
```

- DNSMASQ

```shell
To restart dnsmasq after an upgrade:
  sudo brew services restart dnsmasq
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/dnsmasq/sbin/dnsmasq --keep-in-foreground -C /opt/homebrew/etc/dnsmasq.conf -7 /opt/homebrew/etc/dnsmasq.d,*.c
```

- NEO4J
```shell
To start neo4j now and restart at login:
  brew services start neo4j
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/neo4j/bin/neo4j console
```

PROMETHEUS
```
When run from `brew services`, `prometheus` is run from
`prometheus_brew_services` and uses the flags in:
   /opt/homebrew/etc/prometheus.args

To restart prometheus after an upgrade:
  brew services restart prometheus
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/prometheus/bin/prometheus_brew_services
```

- KAFKA
```shell
To restart kafka after an upgrade:
  brew services restart kafka
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/kafka/bin/kafka-server-start /opt/homebrew/etc/kafka/server.properties
```

==> openssl@3
A CA file has been bootstrapped using certificates from the system
keychain. To add additional certificates, place .pem files in
  /opt/homebrew/etc/openssl@3/certs

and run
  /opt/homebrew/opt/openssl@3/bin/c_rehash

openssl@3 is keg-only, which means it was not symlinked into /opt/homebrew,
because macOS provides LibreSSL.

If you need to have openssl@3 first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"' >> ~/.zshrc

For compilers to find openssl@3 you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"

For pkg-config to find openssl@3 you may need to set:
  export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"

==> php
To enable PHP in Apache add the following to httpd.conf and restart Apache:
    LoadModule php_module /opt/homebrew/opt/php/lib/httpd/modules/libphp.so

    <FilesMatch \.php$>
        SetHandler application/x-httpd-php
    </FilesMatch>

Finally, check DirectoryIndex includes index.php
    DirectoryIndex index.php index.html

The php.ini and php-fpm.ini file can be found in:
    /opt/homebrew/etc/php/8.1/

To restart php after an upgrade:
  brew services restart php
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/php/sbin/php-fpm --nodaemonize

-----END_OF_KAFKA-----

-----

### RUBY

- update rubygems

```shell
gem update --system
```

- update all installed gems

```shell
gem update
```

- update concrete gem

```shell
gem update <gemname>
```

- list installed gems

```shell
gem list
```

- list outdated gems

```shell
gem outdated
```

- remove old gems

```shell
gem cleanup
```

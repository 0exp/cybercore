### (Homebrew) Show package version installed from Homebrew:

```shell
brew info grafana/grafana/alloy
```

### (Homebrew) Show installed cascs:

```shell
brew list --cask
```

### Generate new SSH Key

```shell
ssh-keygen -t ed25519 -C "your_email@example.com"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

### Ansible upgrade

`pip3 install --user --upgrade ansible` :|

---

### Ansible executables path

`pyenv + pip install --user ansible` => `~/.local/bin/`

---

### MacOS system’s maxfiles config

1. Create the plist file

```shell
touch /Library/LaunchDaemons/limit.maxfiles.plist
```

2. Seed the content below:

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
      <string>524288</string>
      <string>524288</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>ServiceIPC</key>
    <false/>
  </dict>
</plist>
```

3. Give the file correct permissions:

```shell
sudo chown root:wheel /Library/LaunchDaemons/limit.maxfiles.plist
```

4. Validate that the file is correct:

```shell
sudo plutil /Library/LaunchDaemons/limit.maxfiles.plist
```

5. Load the file (OR reboot):

```shell
sudo launchctl load -w /Library/LaunchDaemons/limit.maxfiles.plist
```

6. Check new value:

```shell
ulimit -n
```

OR:

```shell
launchctl limit maxfiles
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

- CLICKHOUSE

```shell
  brew postinstall clickhouse/clickhouse/clickhouse@23.5
==> Caveats
If you intend to run ClickHouse server:

  - Familiarize yourself with the usage recommendations:
      https://clickhouse.com/docs/en/operations/tips/

  - Increase the maximum number of open files limit in the system:
      macOS: https://clickhouse.com/docs/en/development/build-osx/#caveats
      Linux: man limits.conf

  - Set the 'net_admin', 'ipc_lock', and 'sys_nice' capabilities on /opt/homebrew/opt/clickhouse@23.5/bin/clickhouse binary. If the capabilities are not set the taskstats accounting will be disabled. You can enable taskstats accounting by setting those capabilities manually later.
      Linux: sudo setcap 'cap_net_admin,cap_ipc_lock,cap_sys_nice+ep' /opt/homebrew/opt/clickhouse@23.5/bin/clickhouse

  - By default, the pre-configured 'default' user has an empty password. Consider setting a real password for it:
      https://clickhouse.com/docs/en/operations/settings/settings-users/

  - By default, ClickHouse server is configured to listen for local connections only. Adjust 'listen_host' configuration parameter to allow wider range of addresses for incoming connections:
      https://clickhouse.com/docs/en/operations/server-configuration-parameters/settings/#server_configuration_parameters-listen_host

To start clickhouse/clickhouse/clickhouse@23.5 now and restart at login:
  brew services start clickhouse/clickhouse/clickhouse@23.5
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/clickhouse@23.5/bin/clickhouse server --config-file /opt/homebrew/etc/clickhouse-server/config.xml --pid-file /opt/homebrew/var/run/clickhouse-server/clickhouse-server.pid
==> Summary
```

```shell
Directories:

Config:    $(brew --prefix)/etc/clickhouse-server/
Data:      $(brew --prefix)/var/lib/clickhouse/
Logs:      $(brew --prefix)/var/log/clickhouse-server/
PID file:  $(brew --prefix)/var/run/clickhouse-server/
```

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

- etcd

```shell
To restart etcd after an upgrade:
  brew services restart etcd
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/etcd/bin/etcd
```

- openssl@3
```shell
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
```

- php
```shell
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

In order to Change port listening port of php-fpm:

1. open: /opt/homebrew/etc/php/8.2/php-fpm.d/www.conf
2. change: listen = 127.0.0.1:9000
```

- prometheus
```shell
When run from `brew services`, `prometheus` is run from
`prometheus_brew_services` and uses the flags in:
   /opt/homebrew/etc/prometheus.args

To start prometheus now and restart at login:
  brew services start prometheus
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/prometheus/bin/prometheus_brew_services
```

- node_exporter
```shell
When run from `brew services`, `node_exporter` is run from
`node_exporter_brew_services` and uses the flags in:
  /opt/homebrew/etc/node_exporter.args

To start node_exporter now and restart at login:
  brew services start node_exporter
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/node_exporter/bin/node_exporter_brew_services
==> Summary
🍺  /opt/homebrew/Cellar/node_exporter/1.8.2: 12 files, 11.6MB
==> Running `brew cleanup node_exporter`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
```

- victoriametrics
```shell
==> Caveats
To start victoriametrics now and restart at login:
  brew services start victoriametrics
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/victoriametrics/bin/victoria-metrics -httpListenAddr\=127.0.0.1:8428 -promscrape.config\=/opt/homebrew/etc/victoriametrics/scrape.yml -storageDataPath\=/opt/homebrew/var/victoriametrics-data
==> Summary
🍺  /opt/homebrew/Cellar/victoriametrics/1.105.0: 9 files, 21.5MB
==> Running `brew cleanup victoriametrics`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
```

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

### Minikube

- create cluster:

```shell
minikube start
```

- delete all clusters:

```shell
minikube delete --all
```

- add dashboard:

```shell
minikube dashboard
```

- show addons:

```shell
minikube addons list
```

- stop the cluster:

```shell
minikube stop
```

- pause minikube:

```shell
minikube pause
```

- unpause minikube:

```shell
minikube unpause
```

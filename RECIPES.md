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

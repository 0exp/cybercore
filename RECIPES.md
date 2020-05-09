### MacOS system’s maxfiles config

```
/Library/LaunchDaemons/limit.maxfiles.plist
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

```shell
sudo chown root:wheel /Library/LaunchDaemons/limit.maxfiles.plist
```

...rebot...

```shell
ulimit -n
```

### MacOS Window Group Navigation

```shell
super+`
```

---

### Sublime Text Sidebar Navigation

ctrl+0 => arrow keys

---

### Sublime Text 3 Snippets Location (macOS)

```shell
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
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

To have launchd start postgresql now and restart at login:
  brew services start postgresql
Or, if you don't want/need a background service you can just run:
  pg_ctl -D /usr/local/var/postgres start
```

- RABBITMQ

```shell
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d

To have launchd start rabbitmq now and restart at login:
  brew services start rabbitmq
Or, if you don't want/need a background service you can just run:
  rabbitmq-server
```

- MEMCACHED

```shell
To have launchd start memcached now and restart at login:
  brew services start memcached
Or, if you don't want/need a background service you can just run:
  /usr/local/opt/memcached/bin/memcached
```

- REDIS

```shell
To have launchd start redis now and restart at login:
  brew services start redis
Or, if you don't want/need a background service you can just run:
  redis-server /usr/local/etc/redis.conf
```

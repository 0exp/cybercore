# cybercore

My development environments and system configurations (**macOS Sonoma**).

> (macOS Sonoma 15.1) ansible-core@2.17.6 / java@23 / XCode@16.1

- [Macbook Setup](#macbook-setup)
- [Daily Tasks](#daily-tasks)
- [Additional instructions](#additional-instructions)
- [Crazy Tips](#crazy-tips)
- [(CI) Build Script](#ci-build-script)
- ([dotfiles](dotfiles))

---

> ! Check `PREINSTALLATION_REQUIREMENTS.md` in first!

---

- **ruby** (<u>3.3.6</u>) (14.11.2024)
- **truffleruby** (<u>24.1.1</u>) (14.11.2024)
- **minikube** (latest@**homebrew**) (<u>1.34.0</u>) (14.11.2024)
- **nodejs** (latest@**nvm**) (<u>23.2.0</u>) (14.11.2024)
- **elixir** (<u>1.17.3</u>) (14.11.2024)
- **erlang** (<u>27.1.2)</u> (14.11.2024)
- **java** (<u>23.0.1</u>u>) (14.11.2024)
- **scala** (latest@**homebrew**) (<u>3.5.2</u>) (14.11.2024)
- **php** (latest@**homebrew**) (<u>8.3.13</u>) (14.11.2024)
- **rust** (<u>1.82.0</u>) (14.11.2024)
- **python** (<u>3.13.0</u>) (14.11.2024)
- **postgresql** (<u>17.0</u>) (14.11.2024)
- **clickhouse** (<u>24.10.1.2812</u>) (14.11.2024)
- **memcached** (latest@**homebrew**) (<u>1.6.32</u>) (14.11.2024)
- **redis** (latest@**homebrew**) (<u>7.2.6</u>) (14.11.2024)
- **rabbitmq** (latest@**homebrew**) (<u>4.0.3</u>) (14.11.2023)
- **kafka** (latest@**homebrew**) (<u>3.9.0</u>) (14.11.2024)
- **influxdb** (latest@**homebrew**) (<u>2.7.10</u>) (14.11.2024)
- **telegraf** (latest@**homebrew**) (<u>1.32.2</u>) (14.11.2024)
- **prometheus** (latest@**homebrew**) (<u>2.55.1</u>) (14.11.2024)
- **victoriametrics** (latest@**homebrew**) (<u>20241105-190334</u>) (14.11.2024)
- **neo4j** (latest@**homebrew**) (<u>5.25.1</u>) (14.11.2024)
- **etcd** (latest@**homebrew**) (<u>3.5.17</u>) (14.11.2024)
- **vault** (latest@**homebrew**) (<u>1.1814</u>) (14.11.2024)

---

### Macbook Setup

**(ansible)** macOS roles:
  - `macos_config` - apply basic macOS configs;
  - `macos_databases` - setup databases (**PostgreSQL**, **Memcached**, **Redis**, **ClickHouse**, and **Vault**);
  - `macos_monitoring` - setup monitoring tools (**InfluxDB**, **Telegraf**, **Prometheus**, **VictoriaMetrics**);
  - `macos_kubernetes_env` - setup **K8S** environment;
  - `macos_pyton_env` - setup **Python** environment;
  - `macos_js_env` - setup **JavaScript** environment;
  - `macos_ruby_env` - setup **Ruby** environment;
  - `macos_rust_env` - setup **Rust** environment;
  - `macos_elixir_env` - setup **Elixir** environment;
  - `macos_scala_env` - setup **Scala** environment;
  - `macos_php_env` - setup **PHP** environment;
  - `macos_soft` - install neccessary sofwtare;
  - `macos_post_config` - apply post macOS configs (copy dotfiles, setup system fonts, clone projects, etc);

**(ansible)** setup macOS:
```shell
ansible-playbook macbook_setup.yml -vvv --ask-become-pass
```

- [sublime package list](dotfiles/sublime/packages.md)
- [sublime snippets](dotfiles/sublime/snippets.md)
- [dotfiles](dotfiles)

---

### Daily Tasks

```shell
ansible-playbook macbook_daily.yml --list-tasks
```

### Environment

- actualzie **dotfiles** (`update-dots`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_dotfiles
  ````
- actualize custom fonts (`update-fonts`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_fonts
  ```
- actualize **solargraph** (`update-solargraph`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_solargraph
  ```
- update **spaceship-prompt** (`update-prompt`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_spaceship
  ```
- update language environments (`update-langs`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_languages
  ```
- update ruby gems (`update-gems`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_ruby_gems
  ```
- update k8s env (`update-k8s`, `update-kubernetes`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_k8s
  ```
- update databases (`update-databases`, `update-dbs`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_databases
  ```
- update minotiring tools (`update-monitoring`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_monitoring
  ```

### Programming languages

- update **rbenv** (`update-rbenv`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_rbenv
  ```
- update **pyenv** (`update-pyenv`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_pyenv
  ```
- update **rust** (`update-rust`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_rust
  ```
- update **js** (updates `nvm`, `node` and `yarn`) (`update-js`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_js
  ```
- update **elixir** (`update-elixir`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_elixir
  ```
- update **scala** (updates `scala`, `sbt` and `amonite-repl`) (`update-scala`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_scala
  ```
- update **php** (`update-php`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_php
  ```

### Software

- update soft (`update-soft`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_soft
  ```

---

### Additional instructions

- iterm2 profile: [dotfiles/iterm/daiver.json](dotfiles/iterm/daiver.json)

---

### Crazy Tips

- open dahsdoc documentation about Ruby's `attr_reader` or `Kernel` module:
```shell
  rubydash attr_reader
```
```shell
  rubydash Kernel
```

- open dashdoc documentation for Docker:
```shell
  dashdoc docker:
```

- tranlsate any text (copy any text to a clipboard and type `trs` in console shell):
```shell
daiver => ~/Projects
➜ trs
Sorbet - это быстрый и мощный тип проверки, разработанный для Ruby.
daiver => ~/Projects
➜
 ```

---

### (CI) Build Script

```shell
pip3 install -r requirements.txt
yamllint --strict $(git ls-files '*.yaml' '*.yml')
ansible-lint *.yml
```

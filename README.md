# cybercore &middot; [![Build Status](https://travis-ci.org/0exp/cybercore.svg?branch=master)](https://travis-ci.org/0exp/cybercore)

My development environments and system configurations (**macOS Sonoma**).

> ansible@8.4.0 [core 2.15.4] / Java@21 / XCode@15.0

> macOS Sonoma (14.2.1)

- [Macbook Setup](#macbook-setup)
- [Daily Tasks](#daily-tasks)
- [Additional instructions](#additional-instructions)
- [Crazy Tips](#crazy-tips)
- [(CI) Build Script](#ci-build-script)
- ([dotfiles](dotfiles))

---

> ! Check PREINSTALLATION_REQUIREMENTS.md first!

---

- **ruby** (<u>3.3.0</u>) / **truffleruby** (<u>23.1.1</u>)
- **k8s** / **minikube** (latest@**homebrew**) (?)
- **rust** (<u>1.72.1</u>)
- **python** (<u>3.11.5</u>)
- **nodejs** (latest@**nvm**) (<u>20.8.0</u>) (01.10.2023)
- **elixir** (<u>1.15.6</u>) / **erlang** (<u>26.1)</u>
- **scala** (latest@**homebrew**) (<u>3.3.1</u>) (01.10.2023)
- **php** (latest@**homebrew**) (<u>8.2.11</u>) (01.10.2023)
- **postgresql** (<u>16.0</u>)
- **clickhouse** (<u>23.5</u>)
- **memcached** (latest@**homebrew**) (<u>1.6.21</u>) (01.10.2023)
- **redis** (latest@**homebrew**) (<u>7.2.1</u>) (01.10.2023)
- **rabbitmq** (latest@**homebrew**) (<u>3.12.6</u>) (01.10.2023)
- **kafka** (latest@**homebrew**) (<u>3.5.1</u>) (01.10.2023)
- **influxdb** (latest@**homebrew**) (<u>2.7.3</u>) (01.10.2023)
- **telegraf** (latest@**homebrew**) (<u>1.28.1</u>) (01.10.2023)
- **neo4j** (latest@**homebrew**) (<u>5.12.0</u>) (01.10.2023)
- **etcd** (latest@**homebrew**) (<u>3.5.9</u>) (21.10.2023)

---

### Macbook Setup

**(ansible)** macOS roles:
  - `macos_config` - apply basic macOS configs;
  - `macos_databases` - setup databases (**PostgreSQL**, **Memcached**, **Redis**, **ClickHouse**, **InfluxDB**);
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
ansible-playbook macbook_setup.yml -vvv
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

---

### TODO:

- workflow for installatoin of all necessary gems and javascript libs;
- migrate to Github Actions CI;
- `macbook.user` as a customizable runtime setting;
- clone ohmyzsh and ohmyzsh-related plugins to my repository;
- clone sublime packages (and use `Package Control: Satisfy Dependencies`);
- ruby gemlist with auotmated instalation and updates;
- js package list with automated installation and updates;

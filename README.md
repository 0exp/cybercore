# cybercore

My development environments and system configurations (**macOS Sonoma**).

> (macOS Sequoia 15.4.1) ansible-core@2.17.6 / XCode@16.3

- [Macbook Setup](#macbook-setup)
- [Daily Tasks](#daily-tasks)
- [Additional instructions](#additional-instructions)
- [Crazy Tips](#crazy-tips)
- [(CI) Build Script](#ci-build-script)
- ([dotfiles](dotfiles))

---

> ! Check `PREINSTALLATION_REQUIREMENTS.md` in first!

---

- **ruby** (<u>3.4.3</u>) (02.05.2025)
- **go** (latest@**homebrew**) (<u>1.24.2</u>) (04.05.2025)
- **truffleruby** (<u>24.2.1</u>) (02.05.2025)
- **minikube** (latest@**homebrew**) (<u>1.35.0</u>) (02.05.2025)
- **nodejs** (latest@**nvm**) (<u>23.11.0</u>) (02.05.2025)
- **elixir** (<u>1.18.3</u>) (02.05.2025)
- **erlang** (<u>27.3.3)</u> (02.05.2025)
- **java** (<u>24.0.1</u>u>) (02.05.2025)
- **scala** (latest@**homebrew**) (<u>3.6.4</u>) (02.05.2025)
- **php** (latest@**homebrew**) (<u>8.4.6</u>) (02.05.2025)
- **rust** (<u>1.86.0</u>) (02.05.2025)
- **python** (<u>3.13.3</u>) (02.05.2025)
- **postgresql** (<u>17.4</u>) (01.05.2025)
- **clickhouse** (<u>25.3.2.39</u>) (01.05.2025)
- **memcached** (latest@**homebrew**) (<u>1.6.38</u>) (01.05.2025)
- **redis** (latest@**homebrew**) (<u>7.2.7</u>) (01.05.2025)
- **rabbitmq** (latest@**homebrew**) (<u>4.1.0</u>) (01.05.2025)
- **kafka** (latest@**homebrew**) (<u>4.0.0</u>) (02.05.2025)
- **influxdb** (latest@**homebrew**) (<u>2.7.11</u>) (01.05.2025)
- **telegraf** (latest@**homebrew**) (<u>1.34.2</u>) (01.05.2025)
- **grafana** (latest@**homebrew**) (<u>11.6.1</u>) (01.05.2025)
  - **agent** (latest@**homebrew**) (<u>0.44.2</u>) (01.05.2025)
  - **alloy** (latest@**homebrew**) (<u>1.8.2</u>) (01.05.2025)
  - **loki** (latest@**homebrew**) (<u>3.5.0</u>) (01.05.2025)
  - **pyroscope** (latest@**homebrew**) (<u>1.13.2</u>) (01.05.2025)
- **prometheus** (latest@**homebrew**) (<u> 3.3.0</u>) (01.05.2025)
  - **node_exporter** (latest@**homebrew**) (<u>1.9.0</u>) (01.05.2025)
- **victoriametrics** (latest@**homebrew**) (<u>1.116.0</u>) (01.05.2025)
  - **victorialogs** (latest@**homebrew**) (<u>1.21.0</u>) (01.05.2025)
- **opensearch** (latest@**homebrew**) (<u></u>) (01.05.2025)
- **neo4j** (latest@**homebrew**) (<u>2025.03.0</u>) (01.05.2025)
- **etcd** (latest@**homebrew**) (<u>3.5.21</u>) (01.05.2025)
- **vault** (latest@**homebrew**) (<u>1.19.0</u>) (01.05.2025)
- **ai:**
  - **jan** (latest@**homebrew**) (<u>?</u>) (04.05.2025)
  - **llama.cpp** (latest@**homebrew**) (<u>?</u>) (04.05.2025)
  - **ollama** (latest@**homebrew**) (<u>?</u>) (04.05.2025)

---

### Macbook Setup

**(ansible)** macOS roles:
  - `macos_config` - apply basic macOS configs;
  - `macos_databases` - setup databases (**PostgreSQL**, **Memcached**, **Redis**, **ClickHouse**, **Vault**, etc.);
  - `macos_monitoring` - setup monitoring tools (**InfluxDB**, **Telegraf**, **Prometheus**, **VictoriaMetrics**, **OpenSearch**, etc.);
  - `macos_kubernetes_env` - setup **K8S** environment;
  - `macos_ai_env` - setup **AI** environment (**llama.cpp**, **ollama**, **jan**, etc.);
  - `macos_pyton_env` - setup **Python** environment;
  - `macos_go_env` - setup **Go** environment;
  - `macos_js_env` - setup **JavaScript** environment;
  - `macos_ruby_env` - setup **Ruby** environment;
  - `macos_rust_env` - setup **Rust** environment;
  - `macos_elixir_env` - setup **Elixir** environment;
  - `macos_erlang_env` - setup **Erlang** environment;
  - `macos_scala_env` - setup **Scala** environment;
  - `macos_php_env` - setup **PHP** environment;
  - `macos_soft` - install neccessary sofwtare;
  - `macos_post_config` - apply post macOS configs (copy dotfiles, setup system fonts, clone github projects, etc);

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
- update ai env (`update-ai`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_ai_env
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
- update **erlang** (`update-erlang`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_erlang
  ```
- update **scala** (updates `scala`, `sbt` and `amonite-repl`) (`update-scala`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_scala
  ```
- update **php** (`update-php`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_php
  ```
- update **go** (`update-go`):
  ```shell
  ansible-playbook macbook_daily.yml --tags update_go
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

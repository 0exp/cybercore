# cybercore &middot; [![Build Status](https://travis-ci.org/0exp/cybercore.svg?branch=master)](https://travis-ci.org/0exp/cybercore)

My development environments and system configurations (**macOS Sonoma**).

> ansible@8.4.0 [core 2.15.4] / Java@21 / XCode@15.0

> macOS Sonoma (14.0)

- [Macbook Setup](#macbook-setup)
- [Daily Tasks](#daily-tasks)
- [Additional instructions](#additional-instructions)
- [Crazy Tips](#crazy-tips)
- [(CI) Build Script](#ci-build-script)
- ([dotfiles](dotfiles))

---

> ! Check PREINSTALLATION_REQUIREMENTS.md first!

---

> Homebrew latest-version date: <01.10.2023>

- **ruby** (3.2.2) / **truffleruby** (23.1.0)
- **k8s** (?)
- **rust** (1.72.1)
- **python** (3.11.5)
- **nodejs** (latest) (**20.8.0** at commit moment)
- **elixir** (1.15.6) / **erlang** (26.1)
- **scala** (latest@**homebrew**) (**3.3.1**) / **sbt** (latest@**homebrew**) (**1.9.6**)
- **php** (latest@**homebrew**) (**8.2.11**)
- **postgresql** (16.0)
- **memcached** (latest@**homebrew**) (**1.6.21**)
- **redis** (latest@**homebrew**) (**7.2.1**)
- **rabbitmq** (latest@**homebrew**) (**3.12.6**)
- **kafka** (latest@**homebrew**) (**3.5.1**)
- **influxdb** (latest@**homebrew**) (**2.7.3**)
- **telegraf** (latest@**homebrew**) (**1.28.1**)
- **neo4j** (latest@**homebrew**) (**5.12.0**)

---

### Macbook Setup

**(ansible)** macOS roles:
  - `macos_config` - apply basic macOS configs;
  - `macos_kubernetes_env` - setup *K8S* environment;
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
ansible-playbook macbook_setup.yml -v
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

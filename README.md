# cybercore &middot; [![Build Status](https://travis-ci.org/0exp/cybercore.svg?branch=master)](https://travis-ci.org/0exp/cybercore)

My development environments and system configurations (**macOS Monterey**).

> ansible@2.11.6 / Java@17.0.1 / XCode@13.1

> macOS Monterey (12.0.1)

- [Macbook Setup](#macbook-setup)
- [Daily Tasks](#daily-tasks)
- [Additional instructions](#additional-instructions)
- [Crazy Tips](#crazy-tips)
- [(CI) Build Script](#ci-build-script)
- ([dotfiles](dotfiles))

---

- **ruby** (3.1.1)
- **rust** (1.59.0)
- **python** (3.10.2) / **python** (2.7.18)
- **nodejs** (latest) / **yarn** (latest@**1.x**)
- **elixir** (1.13.3) / **erlang** (24.2.2)
- **scala** (latest@**homebrew**) / **sbt** (latest@**homebrew**)
- **php** (latest@**homebrew**)

---

### Macbook Setup

**(ansible)** macOS roles:
  - `macos_config` - apply basic macOS configs;
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

- migrate to Github Actions CI;
- `macbook.user` as a customizable runtime setting;
- clone ohmyzsh and ohmyzsh-related plugins to my repository;
- clone sublime packages (and use `Package Control: Satisfy Dependencies`)

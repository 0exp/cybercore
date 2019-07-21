# cybercore

> my development environments and system configurations

---

**(ansible)** macOS roles:
  - `macos_config` - apply basic macOS configs;
  - `macos_pyton_env` - setup **Python** environment;
  - `macos_js_env` - setup **JavaScript** environment;
  - `macos_ruby_env` - setup **Ruby** environment;
  - `macos_rust_env` - setup **Rust** environment;
  - `macos_soft` - install neccessary sofwtare;
  - `macos_post_config` - apply post macOS configs (copy dotfiles, setup system fonts, etc);

**(ansible)** setup macOS:
```shell
ansible-playbook macbook.yml -v
```

- [sublime package list](roles/macos_post_config/files/sublime/packages.md)
- [dotfiles](roles/macos_post_config/files)

---

**(ansible)** macOS daily tasks:

```shell
ansible-playbook macbook_daily.yml --list-tasks
```

- Environment:
  - [update language environments](#update-language-environments)
  - [update spasechip-prompt](#update-spaceship-prompt)
- Languages:
  - [update rbenv](#update-rbenv)
  - [update rust](#update-rust)
  - [update nvm](#update-nvm)

#### update language environments

```shell
ansible-playbook macbook_daily.yml --tags update_languages
```

#### update rbenv

```shell
ansible-playbook macbook_daily.yml --tags update_rbenv
```

#### update rust

```shell
ansible-playbook macbook_daily.yml --tags update_rust
```

#### update nvm

```shell
ansible-playbook macbook_daily.yml --tags update_nvm
```

#### update spaseship-prompt

```shell
ansible-playbook macbook_daily.yml --tags update_spaceship
```

---

### TODO:

- `brew cleanup` should be invoked by ansible's `handlers`;

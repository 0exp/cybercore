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
  - `macos_post_config` - apply post macOS configs (copy dotfiles, etc);

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

- [update rbenv](#update-rbenv)

#### update rbenv

```shell
ansible-playbook macbook_daily.yml --tags update_rbenv
```

---

### TODO:

- `brew cleanup` should be invoked by ansible's `handlers`;

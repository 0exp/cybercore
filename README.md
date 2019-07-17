# cybercore

> my development environments and system configurations

**(ansible)** macOS roles:
  - `macos_config` - apply basic macOS configs;
  - `macos_js_env` - setup JavaScript environment;
  - `macos_ruby_env` - setup Ruby environment;
  - `macos_soft` - install neccessary sofwtare;

**(ansible)** setup macOS:
```shell
ansible-playbook macbook.yml -v
```

---

- [sublime package list](roles/macos_post_config/files/sublime/packages.md)
- [dotfiles](roles/macos_post_config/files)

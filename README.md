# cybercore

> my development environments and system configurations

---

### Macbook Setup

**(ansible)** macOS roles:
  - `macos_config` - apply basic macOS configs;
  - `macos_pyton_env` - setup **Python** environment;
  - `macos_js_env` - setup **JavaScript** environment;
  - `macos_ruby_env` - setup **Ruby** environment;
  - `macos_rust_env` - setup **Rust** environment;
  - `macos_soft` - install neccessary sofwtare;
  - `macos_post_config` - apply post macOS configs (copy dotfiles, setup system fonts, clone projects, etc);

**(ansible)** setup macOS:
```shell
ansible-playbook macbook_setup.yml -v
```

- [sublime package list](dotfiles/sublime/packages.md)
- [dotfiles](dotfiles)

---

### Daily Tasks

```shell
ansible-playbook macbook_daily.yml --list-tasks
```

- **Environment**:
  - actualzie **dotfiles**: (`--tags update_dotfiles`)
  - actualize custom fonts (`--tags update_fonts`)
  - update **spasechip-prompt**: (`--tags update_spaceship`)
  - update language environments: (`--tags update_languages`)
- **Programming languages**:
  - update **rbenv**: (`--tags update_rbenv`)
  - update **rust**: (`--tags update_rust`)
  - update **nvm**: (`--tags update_nvm`)
- **Software**:
  - install soft: (`--tags install_soft`)

---

### TODO:

- move credential prompts to ansible-vault;

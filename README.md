# cybercore &middot; [![Build Status](https://travis-ci.org/0exp/cybercore.svg?branch=master)](https://travis-ci.org/0exp/cybercore)

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
  - actualize **solargraph** (`--tags update_solargraph`)
  - update **spasechip-prompt**: (`--tags update_spaceship`)
  - update language environments: (`--tags update_languages`)
- **Programming languages**:
  - update **rbenv**: (`--tags update_rbenv`)
  - update **rust**: (`--tags update_rust`)
  - update **nvm**: (`--tags update_nvm`)
- **Software**:
  - update soft: (`--tags update_soft`)

---

### Build-script

```shell
yamllint --strict $(git ls-files '*.yaml' '*.yml')
ansible-lint *.yml
```

---

### TODO:

- move credential prompts to ansible-vault;

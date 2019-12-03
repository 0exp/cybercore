# cybercore &middot; [![Build Status](https://travis-ci.org/0exp/cybercore.svg?branch=master)](https://travis-ci.org/0exp/cybercore)

> my development environments and system configurations

> ansible@2.8.4

- [Macbook Setup](#macbook-setup)
- [Daily Tasks](#daily-tasks)
- [Crazy Tips](#crazy-tips)
- [(CI) Build Script](#ci-build-script)
- ([dotfiles](dotfiles))

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
  - update **spaceship-prompt**: (`--tags update_spaceship`)
  - update language environments: (`--tags update_languages`)
- **Programming languages**:
  - update **rbenv**: (`--tags update_rbenv`)
  - update **rust**: (`--tags update_rust`)
  - update **js**: (`--tags update_js`) (updates `nvm`, `node` and `yarn`)
- **Software**:
  - update soft: (`--tags update_soft`)

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

---

### (CI) Build Script

```shell
pip install -r requirements.txt
yamllint --strict $(git ls-files '*.yaml' '*.yml')
ansible-lint *.yml
```

---

### TODO:

- move credential prompts to ansible-vault;
- clone sublime packages (and use `Package Control: Satisfy Dependencies`)

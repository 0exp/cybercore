# My used workflows

Workflow files: `*.alfredworkflow` (just simply open these files to install)

- `Git Repos` - search and open local repo directories in your favorite app (iTerm, Sublime Text, Sublime Merge);
  - sample: `repos cybercore` + `enter` - open cybercore folder in Sublime Text;
  - sample: `repos qonfig` + `ctrl+enter` - open qonfig folder both in Sublime Text and iTerm;
  - sample: `repos smart_type` + `fn+enter` - open smrt_types folder in Sublime Merge
- `Package Managres` - use commonly used package managers to search packages from Alfred (`gems`, `homebrew` and etc);
  - sample: `yarn babel` - search `babel` packages in `npm`;
  - sample: `gems rails` - seaerch `rails` gems in `rubygems`;
- `Gh Repos` - naviagte over GitHub repos by Alfred;
  - `gh-token` - generate github token (necessary step);
  - `gh-login` - login to github from Alfred's Workflow (necessary step);
  - sample: `gh 0exp/cybercore` - open my `cybercore` git repository;
  - sample: `gh ruby/ruby` - open Ruby language repostory;
  - sample: `gh rails` - search rails-named reposotireis;
- `Dash` - jump to Dash's appropriated documentation from Alfred;
  - sample: `dash ruby2_keywords` - open `ruby2_keywords` documentation in Dash;


## Git Repost (workflow)

Settings: `settings.json` (type `reposettings` in alfred and replace opened config with settings.json content);

Useful commands:

- `reposettings` - open settings;
- `reposupdate` - update internal repo list and cache;
- `reposhelp` - open Git Repos

Used settings:

```json
{
  "__workflow_last_version": "3.1.2",
  "app_cmd": "iTerm",
  "app_default": "Sublime Text",
  "app_alt": "Finder",
  "app_ctrl": ["Sublime Text", "iTerm"],
  "app_shift": null,
  "app_fn": "Sublime Merge",
  "global_exclude_patterns": [],
  "search_dirs": [
    {
      "depth": 2,
      "path": "~/Projects/"
    }
  ]
}
```

---

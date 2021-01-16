# My used workflows

Workflow files: `*.alfredworkflow` (just simply open these files to install)

- `Git Repos` - search and open local repo directories in your favorite app (iTerm, Sublime Text, Sublime Merge);
- `Package Managres` - use commonly used package managers to search packages from Alfred (`gems`, `homebrew` and etc);
- `Gh Repos` - naviagte over GitHub repos by Alfred;
- `Dash` - jump to Dash's appropriated documentation from Alfred;


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

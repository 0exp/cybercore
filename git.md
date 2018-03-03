# Git

---

### .gitconfig

```
[user]
  name = Rustam Ibragimov
  email = iamdaiver@icloud.com
[alias]
  pl = pull origin
  po = push origin
  pof = push --force origin
  pt = push --tags
  aa = add -A
  co = checkout
  cm = commit -m
  cb = checkout -b
  st = status
  bl = branch -l
  bd = branch -D
  bdr = push origin --delete
  dfc = diff --cached
  hist = log --pretty=format:\"(%C(cyan)%ad%C(reset)) %C(yellow)%h%C(reset) [%C(green)%an%C(reset)] %s%d\" --graph --date=relative
  swipe = reset --soft HEAD^
[core]
  ignorecase = false
  excludesfile = /Users/daiver/.gitignore

```

### .gitignore

```
.DS_Store
.idea
```

# works with <pwgen> console utility (see macos_soft ansible tasks)

genpass() {
  pwgen -Bs $1 1 | pbcopy | pbpaste
}

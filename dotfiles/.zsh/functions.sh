# works with <pwgen> console utility (see macos_soft ansible tasks)

genpasswd() {
  local pass_length=12

  if [ ! -z "$1" ]; then
    local pass_length=$1
  fi

  pwgen -Bs $pass_length 1 | pbcopy | pbpaste;
}

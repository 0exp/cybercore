#!/usr/bin/env bash

# ------------------------------------------------------------------------------------------
# NOTE: ASDF aliases and configuration
# ------------------------------------------------------------------------------------------

alias asdf-update="asdf update --head"

# ------------------------------------------------------------------------------------------
# FROM: .asdf/asdf.sh + some my changes
# ------------------------------------------------------------------------------------------

export ASDF_DIR
ASDF_DIR=/Users/daiver/.asdf # NOTE: my change

ASDF_BIN="${ASDF_DIR}/bin"
ASDF_USER_SHIMS="${ASDF_DATA_DIR:-$HOME/.asdf}/shims"
[[ ":$PATH:" == *":${ASDF_BIN}:"* ]] && PATH="${PATH//$ASDF_BIN:/}"
[[ ":$PATH:" == *":${ASDF_USER_SHIMS}:"* ]] && PATH="${PATH//$ASDF_USER_SHIMS:/}"
# add to front of $PATH
PATH="${ASDF_BIN}:$PATH"
PATH="${ASDF_USER_SHIMS}:$PATH"

asdf() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi
  case "$command" in
    "shell")
      eval "$(asdf "sh-$command" "$@")";;
    *)
      command asdf "$command" "$@";;
  esac
}

if [ -n "$ZSH_VERSION" ]; then
  autoload -U bashcompinit
  bashcompinit
fi

# ------------------------------------------------------------------------------------------
# FROM: .asdf/completions/asdf.bash
# ------------------------------------------------------------------------------------------

_asdf () {
  local cur
  cur=${COMP_WORDS[COMP_CWORD]}
  local cmd
  cmd=${COMP_WORDS[1]}
  local prev
  prev=${COMP_WORDS[COMP_CWORD-1]}
  local plugins
  plugins=$(asdf plugin-list 2> /dev/null | tr '\n' ' ')

  # We can safely ignore warning SC2207 since it warns that it will uses the
  # shell's sloppy word splitting and globbing. The possible commands here are
  # all single words, and most likely won't contain special chars the shell will
  # expand.
  COMPREPLY=()

  case "$cmd" in
    plugin-update)
      # shellcheck disable=SC2207
      COMPREPLY=($(compgen -W "$plugins --all" -- "$cur"))
      ;;
    plugin-remove|current|list|list-all)
      # shellcheck disable=SC2207
      COMPREPLY=($(compgen -W "$plugins" -- "$cur"))
      ;;
    plugin-add)
      local available_plugins
      available_plugins=$( (asdf plugin-list 2> /dev/null && asdf plugin-list-all 2> /dev/null) | sort | uniq -u)
      # shellcheck disable=SC2207
      COMPREPLY=($(compgen -W "$available_plugins" -- "$cur"))
      ;;
    install)
      if [[ "$plugins" == *"$prev"* ]] ; then
        local versions
        versions=$(asdf list-all "$prev" 2> /dev/null)
        # shellcheck disable=SC2207
        COMPREPLY=($(compgen -W "$versions" -- "$cur"))
      else
        # shellcheck disable=SC2207
        COMPREPLY=($(compgen -W "$plugins" -- "$cur"))
      fi
      ;;
    update)
      # shellcheck disable=SC2207
      COMPREPLY=($(compgen -W "--head" -- "$cur"))
      ;;
    uninstall|where|reshim|local|global|shell)
      if [[ "$plugins" == *"$prev"* ]] ; then
        local versions
        versions=$(asdf list "$prev" 2> /dev/null)
        # shellcheck disable=SC2207
        COMPREPLY=($(compgen -W "$versions" -- "$cur"))
      else
        # shellcheck disable=SC2207
        COMPREPLY=($(compgen -W "$plugins" -- "$cur"))
      fi
      ;;
    *)
      local cmds='current global help install list list-all local plugin-add plugin-list plugin-list-all plugin-remove plugin-update reshim shell uninstall update where which '
      # shellcheck disable=SC2207
      COMPREPLY=($(compgen -W "$cmds" -- "$cur"))
      ;;
  esac

  return 0
}

complete -F _asdf asdf

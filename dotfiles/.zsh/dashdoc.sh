dashdoc() {
  local search_pattern=""

  if [ ! -z "$1" ]; then
    local search_pattern=$1
  fi

  open dash://${search_pattern}
}

rubydash() {
  local search_pattern=""

  if [ ! -z "$1" ]; then
    local search_pattern=$1
  fi

  dashdoc ruby:${search_pattern}
}

alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias bo="EDITOR=subl bundle open"
alias bircop="bundle exec rubocop"
alias bircopp="bundle exec rubocop --parallel"
alias bircopa="bundle exec rubocop -a \$(git diff master --name-only --diff-filter=AMCRU | grep -E \".*\.rb\")"
alias birspec="bundle exec rspec"
alias birdiff="bundle exec rspec --only-failures"
alias birdog="bundle exec rspec --next-failure"
alias brout="bundle outdated"
alias brake="bundle exec rake"
alias brails="bundle exec rails"
alias brc="bundle exec rails c"
alias birdoc="bundle install && bundle exec yard gems"
alias gmb="gem build"
alias gmp="gem push"
alias bircap="bundle exec cap"
alias bdsm="bundle pristine"
alias burndown="bundle install --redownload" # i moli nokogiri ne podorvat tvoi popkins :)
alias bobo='bundle exec rubocop; bundle exec rspec'

alias yamcop="yamllint --strict \$(git ls-files '*.yaml' '*.yml')"
alias ansicop="ansible-lint *.yml"

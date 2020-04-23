export PATH="./docker/bin:../docker/bin:../../docker/bin:$PATH"
export PROJECT_ROOT="$PWD"
export NVM_DIR="$PWD/.nvm"
[[ -s "/usr/local/opt/nvm/nvm.sh" ]] && . "/usr/local/opt/nvm/nvm.sh"
[[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ]] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

_exec() {
  [[ -z "$2" ]] && docker exec -it "$1" bash \
  || docker exec -it "$1" "$2"
}
alias _build="docker-compose build --force-rm --pull"
alias _ps="docker-compose ps"
alias _run="docker-compose run --rm"
alias _stop="docker-compose stop"
alias _up="docker-compose up --detach --force-recreate --remove-orphans"
alias no-start="docker-compose up --no-start --force-recreate --remove-orphans"
alias _mysql="mysql --host=127.0.0.1 --user=root --default-character-set=utf8mb4"
alias hadolint="docker-compose run --rm hadolint"
alias aws="docker-compose run --rm aws"
alias webpack="docker-compose run --rm node webpack"
alias webpack-cli="docker-compose run --rm node webpack-cli"

alias node="docker-compose run --rm node node"
alias yarn="docker-compose run --rm node yarn"
alias npm="docker-compose run --rm node npm"
alias npx="docker-compose run --rm node npx"
alias ncu="docker-compose run --rm node ncu"
alias tsc="docker-compose run --rm node tsc"
alias eslint="docker-compose run --rm node eslint"
alias gulp="docker-compose run --rm node gulp"

source "${PROJECT_ROOT}"/docker/.env

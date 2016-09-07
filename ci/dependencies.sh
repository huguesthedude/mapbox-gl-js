# disable spotlight to ensure we waste no CPU on needless file indexing
if [[ $(uname -s) == 'Darwin' ]]; then sudo mdutil -i off /; fi;

if [[ ! -d ./nvm ]]; then
    git clone --depth 1 https://github.com/creationix/nvm.git ./nvm
fi

source ./nvm/nvm.sh
nvm use ${NODE_VERSION}

npm install -g pnpm

pnpm install --debug

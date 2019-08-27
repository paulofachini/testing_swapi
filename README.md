# Testing SWAPI ( The Star Wars API )

Repositório da Talk "Como fazer testes automatizados de API REST usando Ruby, RSpec e HTTParty".

## Configurando o ambiente

### Windows Subsistema Linux

[Windows Subsystem for Linux Installation Guide for Windows 10](https://docs.microsoft.com/pt-br/windows/wsl/install-win10)

### git

```bash
sudo apt install git-all
```

### asdf

```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

sudo apt install automake autoconf libreadline-dev \
  libncurses-dev libssl-dev libyaml-dev libxslt-dev \
  libffi-dev libtool unixodbc-dev unzip curl
```

### ruby

```bash
asdf install ruby 2.6.3

asdf global ruby 2.6.3
asdf local ruby 2.6.3

```

## Criando o projeto

Préviamente crie o repositório no Github.

```bash
mkdir workspace
git clone git@github.com:paulofachini/testing_swapi.git
cd testing_swapi
bundle init
```

O arquivo Gemfile será criado no diretório do projeto.
Devemos colocar as gems que iremos usar, conforme abaixo:

```ruby
source "https://rubygems.org"

gem 'rspec', '3.4'
gem 'httparty', '0.17.0'
```

Execute o commando:

```bash
bundle install
```

Após a instalação das gems, execute "rspec --help" para validar a instalação.
Se for necessário execute a instalação:

```bash
sudo apt install ruby-rspec-core
```

Agora execute o comando para iniciar um projeto com RSpec:

```bash
rspec --init
```

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

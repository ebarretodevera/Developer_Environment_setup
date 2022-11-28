## Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Oh my zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Powerlevel10k

1. Descargar

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

2. Editar el .zshrc y cambiar el tema principal por el Powerlevel10k

```bash
nano .zshrc
```

```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

3. Instalar fuentes de la carpeta fonts del proyecto

4. Cambiar la fuente de iTerm2.app

## Plugins 

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

## Colorls

```bash
brew install ruby
cd /usr/local/Cellar/ruby/3.1.2_1/bin
./gem install colorlsç
ln -s /usr/local/lib/ruby/gems/3.1.0/bin/colorls /usr/local/bin/colorls
```

## iTerm2 themes

```bash
git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git
````

## SDKMAN

```bash
curl -s "https://get.sdkman.io" | bash
sdk install java
```

## NVM

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"\n[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm\n[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm -v
nvm install node
```
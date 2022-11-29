# Github SSH config


1. Generar la key

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
````

2. Crear el directorio ~/.ssh

3. Dentro del directorio crear el fichero config (Sólo MacOSX)

```bash
Host *.github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

4. Añadir la key al Llavero del sistema

```bash
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
````

5. Copiar la key .pub 

```bash
pbcopy < ~/.ssh/id_ed25519.pub
````

6. Añadir la key en la configuración de la página web de Github




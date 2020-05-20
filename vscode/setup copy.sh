#! /bin/zsh

# update vscode installed extension list
# code --list-extensions > extensions.txt

if [ -e ~/Library/Application\ Support/Code/User ]; then
    cd ~/Library/Application\ Support/Code/User

    mv settings.json settings.json.bak
    mv keybindings.json keybindings.json.bak
    mv snippets snippets.bak

    cp setting.json ~/dotfiles/vscode/settings.json
    cp keybindings.json ~/dotfiles/vscode/keybindings.json
    cp snipetts ~/dotfiles/vscode/snippets

    for extension in `cat ~/dotfiles/vscode/extensions.txt`; do
        code --install-extension $extension
    done
fi

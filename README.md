# Dotfiles
TODO: https://github.com/dandavison/delta

- Nerd Font: JetBrainsMono Nerd Font: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
- Nerd font goes in `~/.local/share/fonts/`

``` shell
# Create the fonts directory if it doesn't exist
mkdir -p ~/.local/share/fonts

# Unzip the font files there
unzip JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono

# Update the font cache
fc-cache -fv
```

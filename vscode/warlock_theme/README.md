# Warlock for VS Code

A grayscale dark theme for Visual Studio Code, ported from Martin Hardselius'
[Warlock](https://github.com/hardselius/warlock) Vim color scheme — itself a
monochrome variant of [Apprentice](https://github.com/romainl/Apprentice) by
Romain Lafourcade.

## Installing

This is an unpublished local theme. To use it:

1. Copy this `warlock_theme` folder into your VS Code extensions directory:
   - **Linux/macOS:** `~/.vscode/extensions/`
   - **Windows:** `%USERPROFILE%\.vscode\extensions\`
2. Restart VS Code.
3. Open the Command Palette (`Ctrl+Shift+P`) → **Preferences: Color Theme** →
   select **Warlock**.

Alternatively, package it into a `.vsix` with
[`vsce`](https://github.com/microsoft/vscode-vsce):

```sh
npm install -g @vscode/vsce
cd warlock_theme
vsce package
code --install-extension warlock-1.0.0.vsix
```

## Notes

The terminal ANSI palette mirrors `g:terminal_ansi_colors` from the original Vim
scheme, so "red", "green", "blue" etc. all resolve to grays — colored terminal
output will appear monochrome by design.

## Credits

- Original Vim color scheme: [hardselius/warlock](https://github.com/hardselius/warlock)
- Based on: [romainl/Apprentice](https://github.com/romainl/Apprentice)

## License

MIT

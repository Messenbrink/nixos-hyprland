<!-- markdownlint-disable -->
<h1 align="center">
    <a name="top" title="nixos-hyprland">
        nixos-hyprland
    </a>
</h1>
    <br/>
    <br/>
    <br/>
<h1 align="center">
    <sup>
        <a href="https://nixos.org"><img src="https://avatars.githubusercontent.com/u/487568?s=200&v=4"></a>
    </sup>
        <br/>
        <sub>
            <img src="https://forthebadge.com/images/badges/built-with-science.svg">
            <img src="https://forthebadge.com/images/badges/powered-by-black-magic.svg">
        </sub>
    </sup>
</h1>

<div align="center">
    Dotfiles for my <a href="https://hyprland.org">Hyprland</a> setup on my <a href="https://nixos.org">NixOS</a> system.
    <p><strong>Be sure to <a href="#" title="star">⭐️</a> or <a href="#" title="fork">🔱</a> this repo if you find it useful! 😃</strong></p>
</div>
<!-- markdownlint-restore -->

## Setup

- OS: [NixOS](https://nixos.org)
- Window manager: [Hyprland](https://hyprland.org)
- Status bar: [Waybar](https://github.com/Alexays/Waybar)
- Terminal: [WezTerm](https://wezfurlong.org/wezterm/index.html)
- Shell: `Zsh` with plugins managed through [antidote](https://github.com/mattmc3/antidote)
- Current theme: [Rosé Pine](https://rosepinetheme.com)
- Font: [Recursive](https://www.recursive.design)
- Editor: [Neovim](https://neovim.io). Configuration can be found [here](https://github.com/dileep-kishore/neovim)

## Gallery

|             Desktop              |
| :------------------------------: |
| ![desktop](./assets/desktop.png) |

|           Terminal + Tmux            |
| :----------------------------------: |
| ![terminals](assets/./terminals.png) |

|             Neovim             |
| :----------------------------: |
| ![neovim](./assets/neovim.png) |

|            VSCode            |
| :--------------------------: |
| ![vscode](assets/vscode.png) |

## Installation

```sh
sudo nixos-rebuild switch --flake '.#tsuki'
```

### Manual setup

- Zotero
  - Install the [zotero-dracula](https://github.com/dracula/zotero) if you see a white statusbar
  - Install the [zotero-better-bibtex](https://github.com/retorquere/zotero-better-bibtex) plugin
- Obsidian
  - [Literata font](https://fonts.google.com/specimen/Literata) from google fonts

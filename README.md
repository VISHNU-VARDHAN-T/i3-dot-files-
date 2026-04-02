# i3 Dotfiles

A clean, minimal, and keyboard-driven **i3wm** setup optimized for Arch Linux with **Polybar**, beautiful fonts, and a productive workflow.


## Features

- Minimal & distraction-free i3 configuration
- Beautiful Polybar with system modules (CPU, RAM, Battery, Network, Date, etc.)
- Nerd Fonts icon support
- Clean keyboard-driven workflow
- Easy to customize colors and modules
- Well-organized configuration using standard `~/.config/` structure
- Works great with both **X11 (i3)** and ready for **Wayland (Hyprland)** migration


## Requirements

### Core Packages
- `i3-wm`
- `polybar`
- `rofi`
- `picom` (optional - for transparency & blur)
- `dunst` (notifications)
- `alacritty` or `kitty` (terminal)
- `nerd-fonts` (highly recommended)

### Arch Linux Installation
```bash
sudo pacman -S i3-wm polybar rofi picom dunst alacritty nerd-fonts

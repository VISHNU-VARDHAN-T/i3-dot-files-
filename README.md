Markdown# i3 Dotfiles

A clean, minimal, and keyboard-driven **i3wm** setup optimized for Arch Linux with **Polybar**, beautiful fonts, and a productive workflow.


## ✨ Features

- Minimal & distraction-free i3 configuration
- Beautiful Polybar with system modules (CPU, RAM, Battery, Network, Date, etc.)
- Nerd Fonts icon support
- Clean keyboard-driven workflow
- Easy to customize colors and modules
- Well-organized configuration using standard `~/.config/` structure
- Works great with both **X11 (i3)** and ready for **Wayland (Hyprland)** migration

## 📸 Screenshots

<img width="1919" height="1079" alt="2026-04-04_11-11" src="https://github.com/user-attachments/assets/b5a8e072-e43d-49fd-a398-44d3ca3a77d3" />




  
  
## 🛠️ Requirements

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
📁 Installation
Method 1: Using the setup script (Recommended)
Bashgit clone https://github.com/VISHNU-VARDHAN-T/i3-dotfiles.git
cd i3-dotfiles
chmod +x setup.sh
./setup.sh
Method 2: Manual
Bashgit clone https://github.com/VISHNU-VARDHAN-T/i3-dotfiles.git ~/.dotfiles
cd ~/.dotfiles
cp -r .config/* ~/.config/
Then restart i3 (Mod + Shift + R).
🔑 Keybindings
Mod + Enter Open Terminal
Mod + D Rofi Application Launcher
Mod + 1-9 Switch Workspace
Mod Shift + 1-9 Move Window to Workspace
Mod + Shift + Q Kill Focused Window
Mod + Shift + R Restart i3
Mod + Shift + E Exit i3
Full keybindings available in ~/.config/i3/config
🎨 Customization

Colors: Edit ~/.config/polybar/config.ini
Modules: Add/remove in Polybar config
Gaps & Borders: Modify in ~/.config/i3/config
Rofi Theme: ~/.config/rofi/config.rasi

📂 Repository Structure
Bashi3-dotfiles/
├── .config/
│   ├── i3/
│   │   └── config
│   ├── polybar/
│   │   ├── config.ini
│   │   └── launch.sh
│   ├── rofi/
│   │   └── config.rasi
│   ├── picom/
│   │   └── picom.conf
│   └── alacritty/
│       └── alacritty.toml
├── setup.sh
├── README.md
└── LICENSE
🚀 Future Plans

Add Hyprland equivalent configs (Wayland support)
More Polybar themes
Better documentation for modules

💡 Tips

Use JetBrainsMono Nerd Font for best icon rendering
Enable picom for smooth transparency and shadows
Backup your current configs before installing


Made with ❤️ for Arch Linux + i3 users.
Feel free to star ⭐ the repo if you find it useful!

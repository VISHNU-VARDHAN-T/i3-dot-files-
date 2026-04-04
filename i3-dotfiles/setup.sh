#!/bin/bash
# ================================================
# i3 Dotfiles Setup Script
# Author: Vishnu
# ================================================

set -e  # Exit on error

echo "========================================="
echo "   i3 Dotfiles Installer"
echo "========================================="

# Create screenshots directory
mkdir -p ~/Pictures/Screenshots

echo "→ Backing up existing configs..."
BACKUP_DIR="$HOME/.config_backup_$(date +%Y%m%d_%H%M)"
mkdir -p "$BACKUP_DIR"

# Backup existing configs if they exist
for dir in i3 polybar rofi picom; do
    if [ -d "$HOME/.config/$dir" ]; then
        cp -r "$HOME/.config/$dir" "$BACKUP_DIR/" 2>/dev/null || true
        echo "   Backed up ~/.config/$dir"
    fi
done

echo "→ Installing dotfiles..."

# Copy configs from the i3-dotfiles subfolder
cp -r i3-dotfiles/.config/* ~/.config/ 2>/dev/null || true

# Make sure scripts are executable
chmod +x ~/.config/polybar/launch.sh 2>/dev/null || true

echo "→ Setup completed!"
echo ""
echo "✅ Your i3 dotfiles have been installed."
echo ""
echo "Next steps:"
echo "1. Log out and log back in, or restart i3 (Mod + Shift + R)"
echo "2. Make sure you have installed the required packages:"
echo "   sudo pacman -S i3-wm polybar rofi picom dunst alacritty nerd-fonts"
echo ""
echo "Backup of old configs saved at: $BACKUP_DIR"
echo "========================================="

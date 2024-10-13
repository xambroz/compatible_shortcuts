#!/bin/bash
LICENSE="MIT"
LICENSE-TEXT="MIT License

Copyright (c) 2024 Michal Ambroz

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
"

# Compare current settings with default
# gsettings list-recursively | grep -E 'keybindings|media-keys' > gnome_keybindings.txt


gsettings set org.gnome.shell.keybindings screenshot "['<Shift>Print']"
gsettings set org.gnome.shell.keybindings screenshot-window "['<Alt>Print']"


# Cycle through windows on one virtual desktop
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"

# Cycle through windows of one application group with the overview of the groups
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Super>Above_Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "['<Shift><Super>Above_Tab']"

# Cycle through windows of one application group - on one virtual desktop workspace
gsettings set org.gnome.desktop.wm.keybindings cycle-group "['<Alt>grave']"
gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "['<Shift><Alt>grave']"

# Cycle between application groups
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Shift><Super>Tab']"


# Keyboard layout
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space', 'XF86Keyboard']"

# Workspace switching, win compatibility <Super><Control>Left/Right
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Primary><Alt>Left','<Super><Control>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Primary><Alt>Right','<Super><Control>Right']"


# Window placement
# Win+U ... Maximize the window
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Primary><Alt>Up', '<Super>Up']"
# toggle doesn't work if it collides with maximize
gsettings set org.gnome.desktop.wm.keybindings maximize "[]"

# Win+D ... Remove current app from screen or minimize the desktop window.
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>Down']"

gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>F11']"

# Win+Left
gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Super>Left', '<Super>KP_Left']"

# Win+Right
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Super>Right', '<Super>KP_Right']"

# Screensaver lockout
# Win+L ... Lock your PC or switch accounts.
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Control><Alt>l','<Super>l']" #Default is Super+l only


# Win compatibility settings
# https://support.microsoft.com/en-us/windows/keyboard-shortcuts-in-windows-dcc61a57-8ff0-cffe-9796-cb9706c75eec#WindowsVersion=Windows_10

# Win+B ... focus notification area
gsettings set org.gnome.shell.keybindings focus-active-notification "['<Super>n','<Super>b']"

# Win+E ... open file explorer
gsettings set org.gnome.settings-daemon.plugins.media-keys home-static "['XF86Explorer','<Super>e']"

# Win+I ... settings
gsettings set org.gnome.settings-daemon.plugins.media-keys control-center "['<Control><Alt>Return','<Super>i']"
gsettings set org.gnome.shell.keybindings toggle-quick-settings "['<Super><Shift>i']"

# Win+D ... display / hide desktop
# Win+M ... minimize all windows
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d','<Super>M']"

# Win+P ... presentation
gsettings set org.gnome.mutter.keybindings switch-monitor "['<Super>p', 'XF86Display']"

# Win+O ... lock device orientation
gsettings set org.gnome.settings-daemon.plugins.media-keys rotate-video-lock-static "['<Super>o', 'XF86RotationLockToggle']"

# Win+R ... Open the Run dialog box.
gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Alt>F2','<Super>r']"

# Win+U ... ease of access

# Win++ ... magnifier
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier "['<Alt><Super>8','<Super>=']"
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier "['<Alt><Super>8', '<Super>=']"
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-in "['<Alt><Super>equal','<Super>KP_Add']"
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-out "['<Alt><Super>minus','<Super>KP_Subtract']"


# Win+Ctrl+Enter  ... open narrator
gsettings set org.gnome.settings-daemon.plugins.media-keys screenreader "['<Alt><Super>s','<Super><Control>Return']"

# Volume
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-step 6

gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "['<Control><Alt>KP_Down']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down-static "['XF86AudioLowerVolume', '<Ctrl>XF86AudioLowerVolume']"

gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "['<Control><Alt>KP_Up']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up-static "['XF86AudioRaiseVolume', '<Ctrl>XF86AudioRaiseVolume']"

gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute "['<Control><Alt>KP_Home']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute-static "['XF86AudioMute']"

gsettings set org.gnome.settings-daemon.plugins.media-keys mic-mute "['<Control><Alt>KP_End']"
gsettings set org.gnome.settings-daemon.plugins.media-keys mic-mute-static "['XF86AudioMicMute']"



# gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down-precise "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down-precise-static "['<Shift>XF86AudioLowerVolume', '<Ctrl><Shift>XF86AudioLowerVolume']"

# gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down-quiet "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down-quiet-static "['<Alt>XF86AudioLowerVolume', '<Alt><Ctrl>XF86AudioLowerVolume']"

# gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute-quiet "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute-quiet-static "['<Alt>XF86AudioMute']"

# gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up-precise "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up-precise-static "['<Shift>XF86AudioRaiseVolume', '<Ctrl><Shift>XF86AudioRaiseVolume']"

# gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up-quiet "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up-quiet-static "['<Alt>XF86AudioRaiseVolume', '<Alt><Ctrl>XF86AudioRaiseVolume']"



                                                                                          
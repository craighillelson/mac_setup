#!bin/bash

# set the desktop
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/System/Library/Desktop Pictures/Solid Colors/Stone.png"'

# show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# show hard drive and removable media on the desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# enable tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# run playbooks
ansible-playbook install_apps.yml
ansible-playbook remove_all_items_from_dock.yml
ansible-playbook populate_dock.yml
ansible-playbook order_apps_in_the_dock.yml

echo "\n"restart your computer to lock in settings and then you\'re all set"\n"

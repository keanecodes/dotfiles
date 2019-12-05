// Mac Screenshot's type shadow location Configuration // ---------------------

defaults write com.apple.screencapture location ~/Pictures/Screenshots; killall SystemUIServer
defaults write com.apple.screencapture type jpg;killall SystemUIServer
defaults write com.apple.screencapture disable-shadow -bool TRUE; killall SystemUIServer

// Mac Finder Configuration // -----------------------------------------------

Hidden macOS Finder Tips: https://www.youtube.com/watch?v=AMkIcGYuA14

0:44 Show Status bar

Show Path Finder Title Bar
https://www.tekrevue.com/tip/show-path-finder-title-bar/

// Mac Dock Configuration // ------------------------------------------------

defaults write com.apple.dock autohide-delay -float 0; killall Dock
defaults write com.apple.dock autohide-time-modifier -float 0.3; killall Dock
defaults write com.apple.dock static-only -bool true; killall Dock

https://www.intego.com/mac-security-blog/unlock-the-macos-docks-hidden-secrets-in-terminal/
https://www.tekrevue.com/tip/recent-applications-extra-icons-mojave-dock/

// Mac Others Configuration // ----------------------------------------------

Hidden Mac Tricks for macOS https://www.youtube.com/watch?v=aVhNmeo1Z80

3:16 Disable holddown keys

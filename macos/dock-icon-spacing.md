# Today I learned...How to Add Margins to My macOS Dock.



## Examples of use

It's really easy to do, even if you're not a terminal savvy developer.

1. Open terminal.
1. enter `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock` and press enter.
1. This will create a single blank tile in your dock. Simply make as many as you'd like and move them around as see fit. You can always delete a blank space with right-click -> remove from dock.

[![Watch the video](https://github.com/BenGitsCode/today-i-learned/raw/development/assets/media/dock-icon-spacing-image.png)](https://cl.ly/lkGT)





## Credit

**First discovered this within a [twitter thread](https://twitter.com/DannPetty/status/890250201629249536) where this [article](https://www.imore.com/add-space-your-mac-dock?amp) was shared.**

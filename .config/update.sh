#!/usr/bin/env fish

echo 'start updating...'

brew update
brew upgrade
brew cleanup

echo 'updating fish plugins'
fisher update 
fish_update_completions

echo 'Apple Updates'
/usr/sbin/softwareupdate -ia

exit 0

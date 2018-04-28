# Multiclipboard

Simple command line application, that lets you save and load clipboard contents to yml file located in your home directory.

## Installation:

1. Clone this repository
2. Run `bundle install`
3. Copy mcb.rb to any of your PATH `cp mcb.rb ~/bin/mcb`
4. Make this file executable `chmod a+x ~/bin/mcb`

## Usage:

Save current clipboard content to key

`mcb save key`

Load content of key to clipboard

`mcb load key`

List contents of all keys

`mcb list`

# sourcepaper

get a new wallpaper from source with a single action

uses the [Official Unsplash API](https://source.unsplash.com), without them and the work they do this would not be possible so please refrain from spamming their APIs too much.

## pre-requisites

* macOS X+
* wget
* executable permission

## setup

1. `git clone git@github.com:OPVL/sourcepaper.git`
2. modify `WP_WORKING_DIR` & `WP_SIZING` to your correct settings eg. `WP_WORKING_DIR="$HOME/sourcepaper"` & `WP_SIZING=1920x1080`
3. run, you will need to accept the prompt to allow your shell to access finder/folders
4. run again and it should work

## usage

all the images are stored in your `$WORKING_DIR/images` (eg. `/Users/Che.Guevara/wallpaper/images`). They are kept indefinitely and the filename is generated from the current date/time & any keywords passed to the script.

### basic usage

`$: ./update.sh {keyword_1} {keyword_2} {...}`

#### get a new wallpaper (keyword search)

`$: ./update.sh city abstract`

#### get any new wallpaper

`$: ./update.sh`
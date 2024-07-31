# Settings

## General

settings
  - keyboard - shortcuts - keyboard - move focus to next window -> cmd + <
  - general - turn off: Close windows when quitting an app



---

## Iterm 2

Preferences
  - General
    - Closing
      - Turn off "Confirm quit iterm2"
  - Profiles
    - Text
      - Font
        - Hack Nerd Font
    - Keys
      - Key mappings
        - Load preset...
          - Natural text editing

---

## Fix beeps in VS code on ctrl + cmd + arrow

```shell
mkdir -p ~/Library/KeyBindings
cat <<EOF
{
  "^@\UF701" = "noop:";
  "^@\UF702" = "noop:";
  "^@\UF703" = "noop:";
}
EOF | cat > ~/Library/KeyBindings/DefaultKeyBinding.dict
```

More to come....


---

## Moom
- General
  - Treat drawers as part of their window
  - Launch on login
  - Run as menu bar
- Mouse
  - enable full screen 9x9
  - enable custom controls
    - show on hover
  - bring moomed windows to the front automatically
- Keyboard
  - trigger alt + <
  - show logo
  - show cheat sheet
  - options
    - arrow keys - move
    - arrow keys + cmd - move & zoom to half screen
    - arrow keys + alt - move to other display
    - arrow keys + ctrl - nothing
    - return - nothing
    - space - move and zoom to full screen
    - tab - center
    - escape - revert to original dimensions
- custom
  - one view per # monitors
  - ...
  - menu header
  - move to edge or corner - 1 - top left
  - move to edge or corner - 2 - top right
  - move to edge or corner - 3 - bottom right
  - move to edge or corner - 4 - bottom left
  - move to edge or corner - 5 - top
  - move to edge or corner - 6 - right
  - move to edge or corner - 7 - bottom
  - move to edge or corner - 8 - left

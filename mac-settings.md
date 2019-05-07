# Settings

## General

settings
  - keyboard - shortcuts - keyboard - move focus to next window -> cmd + <
  - general - turn off: Close windows when quitting an app


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


# joeychilson/homebrew-tap

Homebrew formulae and casks for my own software.

## Overwatch

Explore coding sessions, understand model usage, and track costs on your desktop.

```sh
brew install --cask --no-quarantine joeychilson/tap/overwatch
```

Overwatch is not notarized, since Apple charges a yearly fee for that.
`--no-quarantine` is what tells macOS to let an app it cannot vouch for run.
Without it the app installs and then refuses to open until you allow it by hand
in **System Settings → Privacy & Security**.

Source and releases: https://github.com/joeychilson/overwatch

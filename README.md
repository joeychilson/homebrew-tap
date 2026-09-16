# joeychilson/homebrew-tap

Homebrew formulae and casks for my own software.

## Overwatch

Explore coding sessions, understand model usage, and track costs on your desktop.

```sh
brew install --cask --no-quarantine joeychilson/tap/overwatch
```

With [mise](https://mise.jdx.dev), which fetches casks without Homebrew:

```sh
mise bootstrap packages brew tap joeychilson/tap
mise bootstrap packages use brew-cask:joeychilson/tap/overwatch
```

Overwatch is not notarized, since Apple charges a yearly fee for that.
`--no-quarantine` is what tells macOS to let an app it cannot vouch for run.
Without it the app installs and then refuses to open until you allow it by hand
in **System Settings → Privacy & Security**. mise sets no quarantine flag of its
own, so it needs nothing equivalent.

Each cask here is published twice: as Ruby under `Casks/`, which is what
Homebrew reads, and as JSON under `api/cask/`, which is where installers that
do not use Homebrew look for it.

Source and releases: https://github.com/joeychilson/overwatch

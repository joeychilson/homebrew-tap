# joeychilson/homebrew-tap

Homebrew formulae and casks for my own software.

## Overwatch

Explore coding sessions, understand model usage, and track costs on your desktop.

```sh
brew install --cask joeychilson/tap/overwatch
```

With [mise](https://mise.jdx.dev), which fetches casks without Homebrew:

```sh
mise bootstrap packages brew tap joeychilson/tap
mise bootstrap packages use brew-cask:joeychilson/tap/overwatch
```

Overwatch is not notarized, since Apple charges a yearly fee for that, so macOS
stops it the first time it is opened: allow it in **System Settings → Privacy &
Security**. Homebrew quarantines every cask and removed `--no-quarantine` in
2026, so there is no longer a flag that avoids this. mise sets no quarantine
flag of its own, so what it installs opens straight away.

Each cask here is published twice: as Ruby under `Casks/`, which is what
Homebrew reads, and as JSON under `api/cask/`, which is where installers that
do not use Homebrew look for it.

Source and releases: https://github.com/joeychilson/overwatch

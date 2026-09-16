cask "overwatch" do
  version "0.2.0"
  sha256 "d50c0f86bc063001904bf647e82808d5584747258d110c5cb645e0a80ff5edff"

  url "https://github.com/joeychilson/overwatch/releases/download/v#{version}/Overwatch_#{version}_universal.dmg"
  name "Overwatch"
  desc "Explore coding sessions, understand model usage, and track costs on your desktop"
  homepage "https://github.com/joeychilson/overwatch"

  # Releases are tags, so the newest one is what Homebrew should compare with.
  livecheck do
    url :url
    strategy :github_latest
  end

  # Not notarized, so macOS stops this the first time it is opened, whoever
  # installed it. Homebrew quarantines every cask and no longer offers a way
  # not to, so there is nothing a cask can do about that.
  depends_on macos: :ventura

  app "Overwatch.app"

  zap trash: [
    "~/Library/Application Support/com.joeychilson.overwatch",
    "~/Library/Caches/com.joeychilson.overwatch",
    "~/Library/Saved Application State/com.joeychilson.overwatch.savedState",
  ]
end

cask "overwatch" do
  version "0.3.0"
  sha256 "c2af9381155e5d36bcfd5056c71bcd7d5eebe82a68c8e31d44a4a5db2309259e"

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

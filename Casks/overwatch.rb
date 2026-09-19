cask "overwatch" do
  version "0.4.0"
  sha256 "582e4428350feec996990d03a9215c7328ff4a41b5234d5913cb227df17d9e89"

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

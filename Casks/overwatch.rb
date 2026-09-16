cask "overwatch" do
  version "0.1.0"
  sha256 "811b7c741faa6178b173f15970d3691448d06db81a8b8d0499a214aa7626c991"

  url "https://github.com/joeychilson/overwatch/releases/download/v#{version}/Overwatch_#{version}_universal.dmg"
  name "Overwatch"
  desc "Explore coding sessions, understand model usage, and track costs on your desktop"
  homepage "https://github.com/joeychilson/overwatch"

  # Not notarized, so Gatekeeper stops it unless it arrives without the
  # quarantine flag: install with `--no-quarantine`.
  depends_on macos: ">= :ventura"

  app "Overwatch.app"

  zap trash: [
    "~/Library/Application Support/com.joeychilson.overwatch",
    "~/Library/Caches/com.joeychilson.overwatch",
    "~/Library/Saved Application State/com.joeychilson.overwatch.savedState",
  ]
end

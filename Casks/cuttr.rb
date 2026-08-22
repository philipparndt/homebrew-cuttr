cask "cuttr" do
  version "0.9.2"
  sha256 "f03e13d89c2b508b3c85d70db7f3f548eafe43f1e414dbac79ea6020b370c74f"

  url "https://github.com/philipparndt/cuttr/releases/download/v#{version}/cuttr-#{version}.dmg"
  name "cuttr"
  desc "Cutting room for video that keeps its decisions in plain text"
  homepage "https://github.com/philipparndt/cuttr"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "cuttr.app"

  zap trash: [
    "~/Library/Application Support/de.rnd7.cuttr",
    "~/Library/Preferences/de.rnd7.cuttr.plist",
    "~/Library/Saved Application State/de.rnd7.cuttr.savedState",
  ]
end

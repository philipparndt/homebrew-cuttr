cask "cuttr" do
  version "0.10.1"
  sha256 "172baa9a3f4d3bc06d459b4156736dd3145f975c71d8096150d8617860fde816"

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

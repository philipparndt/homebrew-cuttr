cask "cuttr" do
  version "0.10.0"
  sha256 "73ed0ed6f973a74eebf76c55d0396387bada5a2a87da97ba235a3d7d34550df8"

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

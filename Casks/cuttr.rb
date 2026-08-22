cask "cuttr" do
  version "0.9.0"
  sha256 "7e33158527a30d10f74753c121fa586179f0833c460b609697729829f7565938"

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

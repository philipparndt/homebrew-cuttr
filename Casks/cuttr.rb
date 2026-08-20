cask "cuttr" do
  version "0.5.0"
  sha256 "437ef3b63036ca5018018a0a0cdeb44d31632307d847e269ae215b41bbb58f2c"

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

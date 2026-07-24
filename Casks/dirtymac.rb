cask "dirtymac" do
  version "1.1.2"
  sha256 "45ed7091db1bf31a41450f8e80e85ee595f86632327d0b11dd8ed2de752d9e9f"

  url "https://github.com/erenmalkoc/dirtymac/releases/download/v#{version}/dirtymac-#{version}.dmg"
  name "dirtymac"
  desc "Menu bar utility that locks the keyboard for cleaning"
  homepage "https://github.com/erenmalkoc/dirtymac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "dirtymac.app"

  zap trash: [
    "~/Library/Preferences/tech.erenium.dirtymac.plist",
  ]
end

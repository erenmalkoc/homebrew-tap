cask "dirtymac" do
  version "1.2.0"
  sha256 "dc136243e99b62faf96830dbcc551343d1fd706872833d3cc557ffdfed63df72"

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

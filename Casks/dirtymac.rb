cask "dirtymac" do
  version "1.3.2"
  sha256 "9c8b434dd4fd7303e8306d10114d7af6ef18d7e8a701e39dbade772cd6bfbff6"

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

  uninstall quit: "tech.erenium.dirtymac"

  zap login_item: "dirtymac",
      trash:      "~/Library/Preferences/tech.erenium.dirtymac.plist"
end

cask "dirtymac" do
  version "1.3.1"
  sha256 "ea14ab201c2e434758b7f97d1ed9281f5f5ce6642712c19a30fc3c75dd5dd9b1"

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

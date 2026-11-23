cask "dirtymac" do
  version "1.4.0"
  sha256 "76d11808edf82f9592bf8765e44246c45784216ecd94d3b0d5fbc25771bce12e"

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

cask "dirtymac" do
  version "1.4.3"
  sha256 "99356c53917757153ef127ae6a9483c3d797e12b23906447be6f7a2d7765e4a9"

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

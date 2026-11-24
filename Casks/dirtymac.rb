cask "dirtymac" do
  version "1.4.6"
  sha256 "e784c72b7d74c042add776e2fdbf27746347f8cf81de5e9c0d16a6f759ac9285"

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

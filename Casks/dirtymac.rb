cask "dirtymac" do
  version "1.1.0"
  sha256 "d71d67dcb19cf3cf65c0eb49f40e958b15198b616a1633a4f7a9aa1659c658d6"

  url "https://github.com/erenmalkoc/dirtymac/releases/download/v#{version}/dirtymac-#{version}.dmg"
  name "dirtymac"
  desc "Menu bar utility that locks the keyboard for cleaning"
  homepage "https://github.com/erenmalkoc/dirtymac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "dirtymac.app"

  zap trash: [
    "~/Library/Preferences/tech.erenium.dirtymac.plist",
  ]
end

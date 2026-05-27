cask "dirtymac" do
  version "1.1.1"
  sha256 "e97b5b3f5a19d2a4218a401779ace9e1fbd9f617622f807aabc3c65257347a35"

  url "https://github.com/erenmalkoc/dirtymac/releases/download/v#{version}/dirtymac-#{version}.dmg"
  name "dirtymac"
  desc "Menu bar utility that locks the keyboard for cleaning"
  homepage "https://github.com/erenmalkoc/dirtymac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "dirtymac.app"

  zap trash: [
    "~/Library/Preferences/tech.erenium.dirtymac.plist",
  ]
end

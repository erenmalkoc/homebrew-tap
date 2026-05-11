# This file belongs Homebrew tap repository, NOT in the
# dirtymac source repository.
#
#     erenmalkoc/homebrew-tap/Casks/dirtymac.rb
#


cask "dirtymac" do
 version "1.0.0"
 sha256 "REPLACE_WITH_SHA256_FROM_RELEASE"

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


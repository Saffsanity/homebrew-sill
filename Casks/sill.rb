cask "sill" do
  version "0.6.2"
  sha256 "27cd0a1f2a2d9c60655165a5a8e67772153c72a5defd755b3f43ec86c0b42229"

  url "https://github.com/Saffsanity/sill/releases/download/v#{version}/Sill.dmg"
  name "Sill"
  desc "Streams windows to an iPhone or iPad with touch, Pencil and keyboard control"
  homepage "https://getsill.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Sill.app"

  zap trash: [
    "~/Library/Caches/me.saffer.sill.mac",
    "~/Library/Logs/Sill",
    "~/Library/Preferences/me.saffer.sill.mac.plist",
  ]
end

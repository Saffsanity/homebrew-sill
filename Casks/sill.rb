cask "sill" do
  version "0.6.1"
  sha256 "191f5bb769015d3f96661f4cb43a74ad146163fbe7d2381e2e4e603e39eae72b"

  url "https://github.com/Saffsanity/sill/releases/download/v#{version}/Sill.dmg"
  name "Sill"
  desc "Streams windows to an iPhone or iPad with touch, Pencil and keyboard control"
  homepage "https://getsill.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Sill.app"

  zap trash: [
    "~/Library/Logs/Sill",
    "~/Library/Preferences/me.saffer.sill.mac.plist",
  ]
end

cask "sill" do
  version "0.6.0"
  sha256 "de1f5afe1176b419af90743f8beb71112bf3f2eee905f7956bcce96a0149a46d"

  url "https://github.com/Saffsanity/sill/releases/download/v#{version}/Sill.dmg"
  name "Sill"
  desc "Streams windows to an iPhone or iPad with touch, Pencil and keyboard control"
  homepage "https://getsill.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sill.app"

  zap trash: [
    "~/Library/Logs/Sill",
    "~/Library/Preferences/me.saffer.sill.mac.plist",
  ]
end

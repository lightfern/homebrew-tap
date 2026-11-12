cask "lightfern" do
  arch arm: "arm64", intel: "x64"

  version "0.2.14"
  sha256 arm:   "498c4a76d334107b27981b1ad3ee7c44b2269760ae3947ee518b80c8d5c08dc2",
         intel: "7a860bb346075f4fc79577c6db1a32853f7c1a6606093a1a0dd75b0a5361a459"

  url "https://dl.lightfern.com/Lightfern-#{version}-#{arch}.dmg"
  name "Lightfern"
  desc "Write and build together"
  homepage "https://lightfern.com/"

  livecheck do
    url "https://dl.lightfern.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  conflicts_with cask: "lightfern@beta"
  depends_on macos: :monterey

  app "Lightfern.app"

  zap trash: [
    "~/Library/Application Support/Lightfern",
    "~/Library/Caches/com.lightfern.desktop",
    "~/Library/Caches/com.lightfern.desktop.ShipIt",
    "~/Library/Caches/lightfern-updater",
    "~/Library/HTTPStorages/com.lightfern.desktop",
    "~/Library/Logs/Lightfern",
    "~/Library/Preferences/com.lightfern.desktop.plist",
    "~/Library/Saved Application State/com.lightfern.desktop.savedState",
  ]
end

# Homebrew Cask for Clipbridge
#
# This file is a TEMPLATE — the actual cask lives in the
# sven-s/homebrew-tap repository at Casks/clipbridge.rb.
#
# To update after a new release:
#   1. Tag and push: `git tag v0.X.0 && git push --tags`
#   2. Wait for the Release workflow to publish the DMG
#   3. `make cask-sha` to print the SHA256
#   4. Update version + sha256 in homebrew-tap's Casks/clipbridge.rb
#   5. Commit and push the tap

cask "clipbridge" do
  version "0.2.0"
  sha256 "306e0c5351b6cd90f62d122115ee9371c03c3424ce0cafdec6ebb044a15757b3"

  url "https://github.com/sven-s/clipbridge/releases/download/v#{version}/Clipbridge-v#{version}.dmg"
  name "Clipbridge"
  desc "Cross-machine clipboard relay for corporate RDP"
  homepage "https://github.com/sven-s/clipbridge"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clipbridge.app"

  zap trash: [
    "~/.clipbridge",
  ]
end

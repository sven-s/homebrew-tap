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
  version "0.3.0"
  sha256 "9c08f990f2c4699a68bc42ad4f305f3a7cf04990d241601b6c2759cdf353cc78"

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

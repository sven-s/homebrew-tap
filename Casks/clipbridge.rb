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
  version "0.5.0"
  sha256 "0ba1100db5fe084c1869ddc9e1749e2fd1bea2f1c0cfe43b205c9a84b550af27"

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

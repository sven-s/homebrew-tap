cask "clipbridge" do
  version "0.1.0"
  sha256 "de2743e5e0662f9f109776779e623ca6b118963367ddd9f5cb016be0d4773df3"

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

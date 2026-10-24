cask "gannin" do
  version "0.0.5"
  sha256 "eb7ed7e8ed612042b9073445970b671b5279fb3e4f826da8604a028a9bf68010"

  url "https://github.com/andrew-waters/gannin/releases/download/v#{version}/Gannin-#{version}.dmg",
      verified: "github.com/andrew-waters/gannin/"
  name "Gannin"
  desc "Workload across the GitHub orgs you belong to"
  homepage "https://gannin.ai/"

  livecheck do
    url "https://gannin.ai/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Gannin.app"

  zap trash: [
    "~/Library/Application Support/dev.andon.gannin",
    "~/Library/Caches/dev.andon.gannin",
    "~/Library/HTTPStorages/dev.andon.gannin",
    "~/Library/Preferences/dev.andon.gannin.plist",
    "~/Library/Saved Application State/dev.andon.gannin.savedState",
  ]
end

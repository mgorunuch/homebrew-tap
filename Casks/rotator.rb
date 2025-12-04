cask "rotator" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.11.3"
  sha256 arm:   "99dd5a6f9115b3244048633795c1ed016cde812f6dcbfd1e327f97788035c99e",
         intel: "ca5ab29e9a13a228a1e05cb5bc67bd8656deac24724d3d155558172aa589296f"

  url "https://github.com/mgorunuch/work-rotator-app/releases/download/v#{version}/Rotator_#{arch}.dmg"
  name "Rotator"
  desc "Work rotation timer app"
  homepage "https://github.com/mgorunuch/work-rotator-app"

  depends_on macos: ">= :catalina"

  app "Rotator.app"

  zap trash: [
    "~/Library/Application Support/com.rotator.app",
    "~/Library/Caches/com.rotator.app",
    "~/Library/Preferences/com.rotator.app.plist",
  ]
end

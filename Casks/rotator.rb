cask "rotator" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.11.5"
  sha256 arm:   "b16f65eee01ed94150e16404e79ffa6824b444ef54cf85daaa2c1dadedd720a3",
         intel: "d17cab1d26969f5e85ecb5471ebc829f5d16b5017ded7c8ff967503013edcd98"

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

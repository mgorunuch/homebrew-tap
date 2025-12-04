cask "rotator" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.11.4"
  sha256 arm:   "5967281b3b9f3675a65812f7cff430e222d91a47c13c6989f61fcaf1bc338aaf",
         intel: "5b7d69f4536f17eb64342469ddae3acd44ba637c3bcd10831984b2fe0bd0ba24"

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

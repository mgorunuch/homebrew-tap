cask "rotator" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.10.7"
  sha256 arm:   "2ebebf641a1f450a48eb67ce22a00649a6613c04cc7945b777c8153b5caa289c",
         intel: "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/mgorunuch/work-rotator-app/releases/download/v#{version}/rotator_#{version}_#{arch}.dmg"
  name "Rotator"
  desc "Work rotation timer app"
  homepage "https://github.com/mgorunuch/work-rotator-app"

  depends_on macos: ">= :catalina"

  app "rotator.app"

  zap trash: [
    "~/Library/Application Support/com.rotator.app",
    "~/Library/Caches/com.rotator.app",
    "~/Library/Preferences/com.rotator.app.plist",
  ]
end

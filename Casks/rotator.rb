cask "rotator" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.11.1"
  sha256 arm:   "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5",
         intel: "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/mgorunuch/work-rotator-app/releases/download/v#{version}/Rotator_#{version}_#{arch}.dmg"
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

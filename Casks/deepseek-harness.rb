cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.3"
  sha256 arm:   "d8c5bb238b9c1a1e6188cf2a876e21ac60ac60aaacbb6079ab03242689a923b1",
         intel: "bcb3d1e34e10c46469c6cfc826896638d1f221c6782d0772f55e1fb4221ccfb1"

  url "https://github.com/dsh-tauri-desk/deepseek-harness-desktop/releases/download/v#{version}/Deepseek.Harness.Desktop_#{version}_#{arch}.dmg"
  name "Deepseek Harness Desktop"
  desc "Desktop application for DeepSeek Harness"
  homepage "https://github.com/dsh-tauri-desk/deepseek-harness-desktop"

  depends_on macos: ">= :catalina"

  app "Deepseek Harness Desktop.app"

  zap trash: [
    "~/Library/Application Support/io.github.hairyf.deepseek-harness-desktop",
    "~/Library/Caches/io.github.hairyf.deepseek-harness-desktop",
    "~/Library/Preferences/io.github.hairyf.deepseek-harness-desktop.plist",
    "~/.dsh",
  ]
end

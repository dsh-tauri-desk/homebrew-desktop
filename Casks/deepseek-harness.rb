cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "089d0ad423f7f3068d0e439aa3b71317fadb05d79ca64ef62bd0b8db188e65bc",
         intel: "0a440fc964f4dad05b6e88f6c1f22b4960ffb626aeda15c5b9b6b96b1e912382"

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

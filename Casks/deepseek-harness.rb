cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.3"
  sha256 arm:   "576a40825881db49764ab01781c691d98646a68fddccce68cc75d4a967b231b1",
         intel: "fc91fc5100a2e052268f9d0d8afe5cb37d094202aee20d99fb7e9b8b6dfebfc4"

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

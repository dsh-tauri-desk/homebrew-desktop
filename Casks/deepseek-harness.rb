cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.1"
  sha256 arm:   "e58a7b77cd8e8ddb0d1adc3e5dc37f1442a5ea26e89e15cbb22fc4927097f70a",
         intel: "3a18f051cea05d79d979275b41c1aeeb255042dd6ea92a510968400c645cb133"

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

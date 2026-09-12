cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "bc43379c179949a2abe0562b389e1c5fc0e22abbef131ca76503674eae10ff09",
         intel: "908f0f018e3da5271964312feb4a8d0d2b7d0edd0ddfa0a787611dc8c5e66a50"

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

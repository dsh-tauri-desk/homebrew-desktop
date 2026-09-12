cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "edd8638df9b30389925b10a40c330e82ea8ac28136a98c3b258636baf50791c3",
         intel: "86bd2c5b09df344435d87587c1bac68858eaeecd2eec1c52cb6775512f89727c"

  url "https://github.com/dsh-tauri-desk/deepseek-harness-desktop/releases/download/v#{version}/Deepseek.Harness.Desktop_#{version}_#{arch}.dmg"
  name "Deepseek Harness Desktop"
  desc "Desktop application for DeepSeek Harness"
  homepage "https://github.com/dsh-tauri-desk/deepseek-harness-desktop"

  app "Deepseek Harness Desktop.app"

  zap trash: [
    "~/Library/Application Support/io.github.hairyf.deepseek-harness-desktop",
    "~/Library/Caches/io.github.hairyf.deepseek-harness-desktop",
    "~/Library/Preferences/io.github.hairyf.deepseek-harness-desktop.plist",
    "~/.dsh",
  ]
end

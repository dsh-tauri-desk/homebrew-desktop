cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.6"
  sha256 arm:   "a838ef19d7d3cc1c6eb65b08f5b0ad963a4ebdabf212dbd3cb0dddd38de2dbc5",
         intel: "19cc127abdd01617537252bb61d4a8342fdc79f2e495f73c5722725a61b390ea"

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

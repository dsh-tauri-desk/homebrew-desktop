cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.4"
  sha256 arm:   "c715df9578504e02cdc0bf89a552f183d23773c67aead50ae8f13d0e7106746b",
         intel: "d921b38937a6d1b3735ffc28fbf18680c29ff1c69ba1d25616cd95b58a524b7d"

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

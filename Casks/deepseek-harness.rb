cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "2ac3d4a42cf29d2a2ec08ad488cb9b5082b9676df274d960a9466f4efa846b53",
         intel: "fc10354da7aa881afca2cd7de2dca08a08a8316aba5763409c85fcc257a2bf82"

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

cask "deepseek-harness-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.13"
  sha256 arm:   "82bc396a0460cb4509c3bd96be5c3aba2b981b543157b272bb9e454f53630369",
         intel: "231c2736a083ecedd9face1ca8c5533c54e95fa4fa5181b886edfb6f492a6dc3"

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

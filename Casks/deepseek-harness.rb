cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.3"
  sha256 arm:   "33389f95275386bcb8bd19e2073e6ec803faedb4562c60f7f94f1121dd1f4ec2",
         intel: "2d92e6d309134838c43f4cd850c49bce49405fdc33095efdfb496a5fc03e1a28"

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

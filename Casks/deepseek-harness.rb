cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "e00df91aff62edd950b767434d6fe458ec17aaeb894ebb92a4aa4ac44a563340",
         intel: "968af06b4d8138e5dd17b7e927160b7ae2f0c439030b0688ce13f37fa1415315"

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

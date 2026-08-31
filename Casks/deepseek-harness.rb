cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "9d38eac89d560e2ab83ce0f1ea67e501afc5598a083da71331f65d0e96741638",
         intel: "9a01d9c4cede7689eb6bc9b9dba0062d9a6572394602e3fdc0cd4b0ee90dd51a"

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

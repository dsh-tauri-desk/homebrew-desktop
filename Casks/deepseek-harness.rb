cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.7"
  sha256 arm:   "c21dcce50f4f569383ee9c9df915a598cfcf140b2591fc61abbb4be62cf2a9cb",
         intel: "0c748711db0ced53108c59129be15edabe575c4deb3e69804e50cc5253f7ffc3"

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

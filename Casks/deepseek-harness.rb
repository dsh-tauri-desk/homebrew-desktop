cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.2"
  sha256 arm:   "3c2edecb9bd3309f72c1a62e06f6435976148783506b4a8bf3bdcf673b2e9db7",
         intel: "174bd4bc4832e3ac454708f81f736ac127d13991d2111ca415c49a7dc198c657"

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

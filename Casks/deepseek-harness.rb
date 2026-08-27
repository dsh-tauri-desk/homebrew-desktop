cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.5"
  sha256 arm:   "6e3412964050b6f5806a455f49e4ef9baf9cd8438a5c48955f2cb7d38f97f11d",
         intel: "42e07d48106d1b2086a0e847162e604ba3683762989e5e7d0bedf9f680cd7787"

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

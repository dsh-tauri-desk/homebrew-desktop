cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.4"
  sha256 arm:   "b255077253969a8dcd26f51250d31be8f45d269fbecaeffd51a00a398a0e5641",
         intel: "e7e67499c92bfc13dc95a8ad9aee49b78441b163693dbcff69dd6837e7c18341"

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

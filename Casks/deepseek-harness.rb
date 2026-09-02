cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.2"
  sha256 arm:   "1bba20ed8ddd2f920023abfe986c8c16d3f36ee18332837072dcc3d42d74bdb6",
         intel: "dd628dfb43de51bbe5cb7184f456099e0e1c83fc66f64dd8b94da77c328b83e1"

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

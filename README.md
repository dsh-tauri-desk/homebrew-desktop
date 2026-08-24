# Homebrew Tap for DeepSeek Harness Desktop

A [Homebrew](https://brew.sh) tap for the macOS builds of
[DeepSeek Harness Desktop](https://github.com/dsh-tauri-desk/deepseek-harness-desktop).

## Install

```bash
brew install dsh-tauri-desk/deepseek-harness-desktop
```

Or add the tap first, then install:

```bash
brew tap dsh-tauri-desk/homebrew-deepseek-harness-desktop
brew install --cask deepseek-harness-desktop
```

## Requirements

- macOS 10.15 (Catalina) or newer.
- The DMG is Developer-ID signed and notarized by the upstream build pipeline, so
  Gatekeeper will trust it.

## Updating

The `Casks/deepseek-harness-desktop.rb` cask is kept in sync automatically by the
[`update-cask`](.github/workflows/update-cask.yml) workflow, which watches the
upstream releases for new stable versions, recomputes the SHA256 for both
architectures, and commits the updated cask. You can also trigger a manual run
from the **Actions** tab.

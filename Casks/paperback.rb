cask "paperback" do
  version "0.11.2"
  sha256 "413a5f5baa5272a30cd501c8a5535c6293cd841561af4ac93c10d68e5181426c"

  url "https://github.com/legalcodes/paperback-releases/releases/download/v#{version}/Paperback_#{version}_aarch64.dmg"
  name "Paperback"
  desc "Reading-first Markdown app"
  homepage "https://paperback.sh/"

  auto_updates true
  depends_on arch: :arm64
  # arm64 requires macOS 11.0; Homebrew's macOS floor already enforces it.
  depends_on :macos

  app "Paperback.app"

  zap trash: [
    "~/Library/Application Support/sh.paperback.desktop",
    "~/Library/Caches/sh.paperback.desktop",
    "~/Library/Preferences/sh.paperback.desktop.plist",
    "~/Library/Saved Application State/sh.paperback.desktop.savedState",
    "~/Library/WebKit/sh.paperback.desktop",
  ]
end

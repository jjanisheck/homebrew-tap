cask "vectorito" do
  version "1.0"
  sha256 "1cb8c530739aabf54d97898ec221d44a9b4c8449c80321667ec330c9337c2778"

  url "https://github.com/jjanisheck/vectorito/releases/download/v#{version}/Vectorito-#{version}-macos.zip"
  name "Vectorito"
  desc "Menu-bar app that turns images into clean SVG with AI-picked settings"
  homepage "https://github.com/jjanisheck/vectorito"

  depends_on arch:  :arm64
  depends_on macos: ">= :ventura"

  app "Vectorito.app"

  caveats <<~CAVEATS
    Vectorito is not signed or notarized. If macOS blocks it on first launch,
    right-click Vectorito in Applications and choose Open, or run:
      xattr -dr com.apple.quarantine "/Applications/Vectorito.app"

    Vectorito lives in the menu bar (the mustache icon) — there is no Dock icon.
  CAVEATS
end

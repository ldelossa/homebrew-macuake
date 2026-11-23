cask "macuake" do
  version "0.3.3"
  sha256 "5423cad82f2730a536450e8c3d9f5ba6ebbf3ee07814076b57234feee3880e86"

  url "https://github.com/ldelossa/macuake/releases/download/v#{version}/Macuake-arm64.zip"
  name "Macuake"
  desc "Personal fork of a drop-down terminal with custom tabs and pane controls"
  homepage "https://github.com/ldelossa/macuake"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Macuake.app"

  caveats <<~EOS
    This personal fork is Developer-ID signed but is not notarized.
    If macOS blocks first launch, use System Settings > Privacy & Security > Open Anyway.
    This cask does not disable Gatekeeper or remove quarantine.

    Macuake.app replaces the upstream app; it is not a side-by-side installation.
    Quit Macuake and finish terminal work before upgrading.
  EOS
end

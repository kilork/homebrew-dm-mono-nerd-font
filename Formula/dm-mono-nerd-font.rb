class DmMonoNerdFont < Formula
  desc "DM Mono with Nerd Fonts glyphs"
  homepage "https://github.com/kilork/dm-mono-nerd-font"
  version "1.0.0"

  url "https://github.com/kilork/dm-mono-nerd-font/releases/download/v1.0.0/dm-mono-nerd-font-1.0.0.tar.gz"
  sha256 "1bd78369eb35c7a735d6269f6d6b36b41bebabdb540c0f291e8babd83fbe6f6f"

  def install
    parent = File.dirname(share/"fonts")
    extracted = "dm-mono-nerd-font-1.0.0"
    system "tar", "-xzf", cached_download.relative_path_from(parent), "-C", parent, "--strip-components=1", extracted
    (share/"fonts").install Dir["#{extracted}/*.ttf"]
  end

  def post_install
    ohai "Installing fonts to ~/Library/Fonts..."
    (HOMEBREW_PREFIX / "Library/Fonts").mkdir_p
    (HOMEBREW_PREFIX / "Library/Fonts").cp Dir[share/"fonts/*"]
  end

  test do
  end
end
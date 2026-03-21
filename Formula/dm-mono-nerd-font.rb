class DmMonoNerdFont < Formula
  desc "DM Mono with Nerd Fonts glyphs"
  homepage "https://github.com/kilork/dm-mono-nerd-font"
  version "1.0.0"

  url "https://github.com/kilork/dm-mono-nerd-font/releases/download/v1.0.0/dm-mono-nerd-font-1.0.0.tar.gz"
  sha256 "1bd78369eb35c7a735d6269f6d6b36b41bebabdb540c0f291e8babd83fbe6f6f"

  def install
    prefix.install Dir["*"]
  end

  test do
  end
end
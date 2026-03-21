class DmMonoNerdFont < Formula
  desc "DM Mono with Nerd Fonts glyphs"
  homepage "https://github.com/kilork/dm-mono-nerd-font"
  version "1.0.0"

  url "https://github.com/kilork/dm-mono-nerd-font/releases/download/v1.0.0/dm-mono-nerd-font-1.0.0.tar.gz"
  sha256 "1bd78369eb35c7a735d6269f6d6b36b41bebabdb540c0f291e8babd83fbe6f6f"

  def install
    system "tar", "-xzf", cached_download, "--strip-components=1", "-C", prefix
  end

  def post_install
    ohai "Installing fonts to ~/Library/Fonts..."
    font_dir = Pathname.new(ENV["HOME"])/"Library/Fonts"
    font_dir.mkpath
    font_dir_cp = Pathname.new(HOMEBREW_PREFIX)/"Library/Fonts"
    font_dir_cp.mkpath
    font_dir_cp.children.each { |f| FileUtils.rm(f) } rescue nil
    font_dir.children.each { |f| FileUtils.rm(f) } rescue nil
    font_dir_cp.install Dir[prefix/"*.ttf"]
  end

  test do
  end
end
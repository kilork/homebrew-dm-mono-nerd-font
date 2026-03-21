cask "dm-mono-nerd-font" do
  version "1.0.0"
  sha256 "1bd78369eb35c7a735d6269f6d6b36b41bebabdb540c0f291e8babd83fbe6f6f"

  url "https://github.com/kilork/dm-mono-nerd-font/releases/download/v#{version}/dm-mono-nerd-font-#{version}.tar.gz"
  name "DM Mono Nerd Font"
  homepage "https://github.com/kilork/dm-mono-nerd-font"

  font "DM Mono Italic Nerd Font Complete.ttf"
  font "DM Mono Light Italic Nerd Font Complete.ttf"
  font "DM Mono Light Nerd Font Complete.ttf"
  font "DM Mono Medium Italic Nerd Font Complete.ttf"
  font "DM Mono Medium Nerd Font Complete.ttf"
  font "DM Mono Regular Nerd Font Complete.ttf"
  font "DMMonoNerdFont-Italic.ttf"
  font "DMMonoNerdFont-Light.ttf"
  font "DMMonoNerdFont-LightItalic.ttf"
  font "DMMonoNerdFont-Medium.ttf"
  font "DMMonoNerdFont-MediumItalic.ttf"
  font "DMMonoNerdFont-Regular.ttf"

  # No zap stanza required
end
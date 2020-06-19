require "formula"

class JreeseApps < Formula
  homepage "https://github.com/jreese/homebrew-formula"
  url "https://github.com/jreese/hang.git", :tag => "v1.1", :revision => "b348a37b7504bf33c12f7f0b580f09819d7d9bdb"

  depends_on "alfred"
  depends_on "bartender"
  depends_on "beardedspice"
  depends_on "daisydisk"
  depends_on "day-o"
  depends_on "discord"
  depends_on "dropbox"
  depends_on "iina"
  depends_on "istat-menus"
  depends_on "keybase"
  depends_on "rocket"
  depends_on "serial"
  depends_on "soundsource"
  depends_on "spotify"
  depends_on "stay"
  depends_on "steam"

  def install
    system "touch", "#{prefix}/share/jreese-apps"
  end

  test do
    system "true"
  end
end



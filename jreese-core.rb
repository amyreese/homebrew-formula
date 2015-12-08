require "formula"

class JreeseCore < Formula
  homepage "https://github.com/jreese/homebrew-formula"
  url "https://github.com/jreese/hang.git", :tag => "v1.1", :revision => "b348a37b7504bf33c12f7f0b580f09819d7d9bdb"

  depends_on "ack"
  depends_on "aria2"
  depends_on "autoconf" => :run
  depends_on "automake" => :run
  depends_on "cask"
  depends_on "gcc"
  depends_on :hg
  depends_on "htop-osx"
  depends_on "keybase"
  depends_on "mobile-shell"
  depends_on "node"
  depends_on "progress"
  depends_on "python"
  depends_on "python3"
  depends_on "tmux"
  depends_on "vim"
  depends_on "watch"
  depends_on "wget"
  depends_on "zsh"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "true"
  end
end


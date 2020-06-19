require "formula"

class JreeseCore < Formula
  homepage "https://github.com/jreese/homebrew-formula"
  url "https://github.com/jreese/hang.git", :tag => "v1.1", :revision => "b348a37b7504bf33c12f7f0b580f09819d7d9bdb"

  depends_on "ack"
  depends_on "aria2"
  depends_on "autoconf"
  depends_on "automake"
  depends_on "certbot"
  depends_on "coreutils"
  depends_on "gawk"
  depends_on "gcc"
  depends_on "git"
  depends_on "grep"
  depends_on "htop-osx"
  depends_on "keychain"
  depends_on "mosh"
  depends_on "openssl"
  depends_on "pkg-config"
  depends_on "progress"
  depends_on "python3"
  depends_on "renameutils"
  depends_on "tree"
  depends_on "tmux"
  depends_on "vim"
  depends_on "watch"
  depends_on "wget"
  depends_on "zsh"
  depends_on "zstd"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "true"
  end
end


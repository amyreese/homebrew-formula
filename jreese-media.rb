require "formula"

class JreeseMedia < Formula
  homepage "https://github.com/jreese/homebrew-formula"
  url "https://github.com/jreese/hang.git", :tag => "v1.1", :revision => "b348a37b7504bf33c12f7f0b580f09819d7d9bdb"

  depends_on "ffmpeg"
  depends_on "youtube-dl"

  def install
    system "touch", "#{prefix}/share/jreese-media"
  end

  test do
    system "true"
  end
end



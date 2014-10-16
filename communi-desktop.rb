require "formula"

class CommuniDesktop < Formula
  homepage "https://github.com/communi/communi-desktop"
  url "https://github.com/communi/communi-desktop/archive/v3.2.0.tar.gz"
  sha1 "316696a50d658b6443ed8c1118c67ceea96b222d"

  depends_on "qt5" => :build
  depends_on "libcommuni"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "qmake"
    system "make", "install"
  end

  test do
    system "true"
  end
end

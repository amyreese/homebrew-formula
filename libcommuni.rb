require "formula"

class Libcommuni < Formula
  homepage "https://github.com/communi/libcommuni"
  url "https://github.com/communi/libcommuni/archive/v3.2.0.tar.gz"
  sha1 "cb6af7147abbf7a5b32b44eba7e43f11255754ec"

  depends_on "qt5" => :build

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    system "qmake"
    system "make", "install"
  end

  test do
    system "true"
  end
end

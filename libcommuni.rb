require "formula"

class Libcommuni < Formula
  homepage "https://github.com/communi/libcommuni"
  url "https://github.com/communi/libcommuni.git", :using => :git, :tag => "3.2.0"
  sha1 ""

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

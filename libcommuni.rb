require "formula"

class Libcommuni < Formula
  homepage "https://github.com/communi/libcommuni"
  url "https://github.com/communi/libcommuni.git", :tag => "v3.4.0"
  head "https://github.com/jreese/libcommuni.git", :branch => "mac-ssl"

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

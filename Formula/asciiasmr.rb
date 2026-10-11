class Asciiasmr < Formula
  desc "Terminal-native generative ambience playground"
  homepage "https://gg.elitehub.page.gd/"
  url "https://github.com/Xenostopical/ascii-asmr/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "d0a216b217d09384d60783b41febf7e57ada0ac9314212853eb2c120608b6d4d"
  license "MIT"

  depends_on "make" => :build

  def install
    system "make", "CC=#{ENV.cc}", "CFLAGS=#{ENV.cflags}"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/asciiasmr --version")
  end
end

class Xshogi < Formula
  desc "X11 interface for GNU Shogi"
  homepage "https://www.gnu.org/software/gnushogi/"
  url "https://ftp.gnu.org/gnu/gnushogi/xshogi-1.4.2.tar.gz"
  mirror "https://ftpmirror.gnu.org/gnushogi/xshogi-1.4.2.tar.gz"
  sha256 "2e2f1145e3317143615a764411178f538bd54945646b14fc2264aaeaa105dab6"
  license "GPL-3.0-or-later"
  revision 1

  livecheck do
    url :stable
  end

  bottle do
    cellar :any
    sha256 "32cdfaceb15bbd7ebc4e2a8d26ca31c0008ce2ed1ef90f6f5309d7157ab722f6" => :catalina
    sha256 "378503de599c2f121c06902aa2235a059b9e47963a80b1f29f7eb4b37b950479" => :mojave
    sha256 "a52ad3a749214e18e02807f479b428f909d87c556cbeeb015dbf1b7b27d1fcb5" => :high_sierra
  end

  depends_on "gnu-shogi"
  depends_on "libx11"
  depends_on "libxaw"
  depends_on "libxext"
  depends_on "libxmu"
  depends_on "libxt"

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--disable-dependency-tracking"
    system "make", "install"
  end
end

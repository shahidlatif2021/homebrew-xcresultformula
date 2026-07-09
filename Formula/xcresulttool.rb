class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.1.2
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.1.2/XCResultParser.tar.gz"
  sha256 "ecd518d01b71efb5efc0086c6aaa3b628bb8afc5e05a4a861926f9ef485128e7"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end

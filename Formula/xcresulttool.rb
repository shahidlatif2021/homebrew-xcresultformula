class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "1.6.0"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v1.6.0/XCResultParser.tar.gz"
  sha256 "6fe5c347858b1dd45d38e71eb73aebc40c40071804fb492cce981641eb410ef1"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
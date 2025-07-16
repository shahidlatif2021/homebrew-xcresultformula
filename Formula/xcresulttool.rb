class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.0.3"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.0.3/XCResultParser.tar.gz"
  sha256 "cd5483cbb6b45c2f015969b3397caf32e8a933c0d2faa73e4fbb680a275322d4"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end

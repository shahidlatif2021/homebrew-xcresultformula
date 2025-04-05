class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "1.2.0"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v1.2.0/XCResultParser.tar.gz"
  sha256 "8d9cf6a52831924626c85667852a90c2d8662d9ac5de8366e8a2ee8125568668"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
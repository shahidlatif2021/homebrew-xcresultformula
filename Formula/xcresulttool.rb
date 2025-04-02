class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "1.0.6"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v1.0.6/XCResultParser.tar.gz"
  sha256 "7f1f51fabb82d89589551fd2001fa2bc3c9012d49058d4d7251608c2b3229cb0"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
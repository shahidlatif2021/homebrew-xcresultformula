class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.1.0"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.1.0/XCResultParser.tar.gz"
  sha256 "cd8edd69055a7376994123896935c14053911e6d7a4bafa6340c8bea9270302e"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end

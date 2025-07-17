class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.0.3"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.0.3/XCResultParser.tar.gz"
  sha256 "7fcf727b792be911f36088df1e96ce7645a1d6d3168a14efb5caf7ea3b459eaa"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end

class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.0.4"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.0.4/XCResultParser.tar.gz"
  sha256 "9862a48f560b65fb5de5b34b5b0aee74dbf060d3d5061d86b6cf787dc7b2ec83"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end

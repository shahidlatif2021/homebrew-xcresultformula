class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "1.4.0"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v1.4.0/XCResultParser.tar.gz"
  sha256 "741642ea8b55e3b1dfd560e8c051b659bc29322bc0d30ffe621efc610c46db64"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
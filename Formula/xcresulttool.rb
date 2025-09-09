class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.0.6"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.0.6/XCResultParser.tar.gz"
  sha256 "db63d9e89db87c22c8c61a8d91956abe9e190380e5ad180afa6cbb853f443294"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end

class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.0.5"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.0.5/XCResultParser.tar.gz"
  sha256 "d6b7c79d26d096ab7a462c43e48fe93db3a16d25933ae7fac9d47445ef8d5b79"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end

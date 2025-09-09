class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "2.0.7"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v2.0.7/XCResultParser.tar.gz"
  sha256 "14cdb387fdfdded6897411eafc2052304c1b868c1b5abcf4a95bee1a690f624e"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end

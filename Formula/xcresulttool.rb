class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "1.0.4"
  url "https://github.com/shahidlatif2021/homebrew-xcresultformula/releases/download/v1.0.4/XCResultParser.tar.gz"
  sha256 "e4ed027e5ea7309ad8c2b42c37ef6b836ad9050fac9b0bcfc2d34ea2d833fc2b"
  license "MIT"


  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
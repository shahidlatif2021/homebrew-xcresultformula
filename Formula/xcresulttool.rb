class Xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  version "1.0.2"
  url "https://github.com/shahidlatif2021/xcresultformula/releases/download/v1.0.2/XCResultParser.tar.gz"
  sha256 "f29045f5c41fe23607b3d62841a51135961442e93d18299e543e1f792d8b7c13"
  license "MIT"

  depends_on "swift" # If your app depends on Swift

  def install
    bin.install "XCResultParser"
  end

  test do
    system "#{bin}/XCResultParser", "--version"
  end
end
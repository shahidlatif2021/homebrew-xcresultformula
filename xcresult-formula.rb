class xcresulttool < Formula
  desc "This tool will convert xcode report into JSON. Later on PDF support will be added"
  homepage "https://github.com/shahidlatif2021/xcresultformula"
  url "https://github.com/yourusername/your-cli-tool/releases/download/v1.0.0/your-cli-tool.tar.gz"
  sha256 "your_sha256_checksum_here"
  license "MIT"

  depends_on "swift" # If your app depends on Swift

  def install
    bin.install "your-cli-tool"
  end

  test do
    system "#{bin}/your-cli-tool", "--version"
  end
end
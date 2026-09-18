# typed: false
# frozen_string_literal: true

class Apimetrics < Formula
  desc "APImetrics CLI"
  homepage "https://apimetrics.io"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/APImetrics/APImetrics-cli/releases/download/v0.0.1/apimetrics-0.0.1-darwin-amd64.tar.gz"
      sha256 "81d6389fc66f133c15ab6126dd1b1b9f0122bd7f67ff097c087df3c3af946183"
    end
    on_arm do
      url "https://github.com/APImetrics/APImetrics-cli/releases/download/v0.0.1/apimetrics-0.0.1-darwin-arm64.tar.gz"
      sha256 "0e7f0ac5c67629e840d29f9da60d18775eb39c6ba33b8c5fca9161a5bcb5d412"
    end
  end

  def install
    bin.install "apimetrics"
  end

  test do
    system "#{bin}/apimetrics", "--version"
  end
end

# typed: false
# frozen_string_literal: true

class Apimetrics < Formula
  desc "APImetrics CLI"
  homepage "https://apimetrics.io"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/APImetrics/APImetrics-cli/releases/download/v0.0.2/apimetrics-0.0.2-darwin-amd64.tar.gz"
      sha256 "ec5e3ac85f3348cf2bf67f3dca851003829b61bce32713bad4a789b14e5792ee"
    end
    on_arm do
      url "https://github.com/APImetrics/APImetrics-cli/releases/download/v0.0.2/apimetrics-0.0.2-darwin-arm64.tar.gz"
      sha256 "2936f3f6f352323198a72a10398583e0ca9ba6dfcd320051e58dd8c219d886d4"
    end
  end

  def install
    bin.install "apimetrics"
  end

  test do
    system "#{bin}/apimetrics", "--version"
  end
end

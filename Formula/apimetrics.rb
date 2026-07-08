# typed: false
# frozen_string_literal: true

class Apimetrics < Formula
  desc "APImetrics CLI"
  homepage "https://apimetrics.io"
  version "0.0.1-beta-3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/APImetrics/APImetrics-cli/releases/download/v0.0.1-beta-3/apimetrics-0.0.1-beta-3-darwin-amd64.tar.gz"
      sha256 "8568b06a49355fa7710ebcd0dca440b19275dad97a69a4d689c0d368beb7631f"
    end
    on_arm do
      url "https://github.com/APImetrics/APImetrics-cli/releases/download/v0.0.1-beta-3/apimetrics-0.0.1-beta-3-darwin-arm64.tar.gz"
      sha256 "b54b4b6609c8acdd42a70664ab7f6d830f6024a35c20db3f9f69d556141252cb"
    end
  end

  def install
    bin.install "apimetrics"
  end

  test do
    system "#{bin}/apimetrics", "--version"
  end
end

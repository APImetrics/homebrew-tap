# typed: false
# frozen_string_literal: true

class Apimetrics < Formula
  desc "APImetrics CLI"
  homepage "https://apimetrics.io"
  version "0.0.1-beta-2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.googleapis.com/apimetrics-cli/0.0.1-beta-2/apimetrics-0.0.1-beta-2-darwin-amd64.tar.gz"
      sha256 "2f8b41f31638a38bd4bcc7d59c10e57b5aba785dc77e982371a232e992247f2b"
    end
    on_arm do
      url "https://storage.googleapis.com/apimetrics-cli/0.0.1-beta-2/apimetrics-0.0.1-beta-2-darwin-arm64.tar.gz"
      sha256 "e037c9ced7210138d57c8f71d7fe899b6c0189dc961140bcd1b22864d015e2e6"
    end
  end

  def install
    bin.install "apimetrics"
  end

  test do
    system "#{bin}/apimetrics", "--version"
  end
end

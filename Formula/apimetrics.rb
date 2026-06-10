# typed: false
# frozen_string_literal: true

class Apimetrics < Formula
  desc "APImetrics CLI"
  homepage "https://apimetrics.io"
  version "0.0.1-alpha-test-11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.googleapis.com/apimetrics-cli/0.0.1-alpha-test-11/apimetrics-0.0.1-alpha-test-11-darwin-amd64.tar.gz"
      sha256 "6216b79f477118fece2fae4df1e57f79081866a797be068cd60f587fadba5a84"
    end
    on_arm do
      url "https://storage.googleapis.com/apimetrics-cli/0.0.1-alpha-test-11/apimetrics-0.0.1-alpha-test-11-darwin-arm64.tar.gz"
      sha256 "d15946d3e0370b91c1ad035f17f873b7a20af2142258b5f04665b0fb27256b33"
    end
  end

  def install
    bin.install "apimetrics"
  end

  test do
    system "#{bin}/apimetrics", "--version"
  end
end

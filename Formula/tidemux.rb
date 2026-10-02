# typed: strict
# frozen_string_literal: true

# Homebrew formula for the TideMux local API gateway.
class Tidemux < Formula
  desc "Local OpenAI and Anthropic compatible API gateway"
  homepage "https://github.com/hs3180/tidemux"
  url "https://github.com/hs3180/tidemux/releases/download/v0.3.0/tidemux_0.3.0_055d98a7375d_darwin_arm64.tar.gz"
  version "0.3.0"
  sha256 "6bc9523760362673c99a90e952ce484a3b341ee43b7864b5f17bef13639c8ad0"
  license "Apache-2.0"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "tidemux"
    pkgshare.install "docs", "licenses", "sbom.spdx.json", "BUILD.txt", "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "0.3.0", shell_output("#{bin}/tidemux version").strip
  end
end

# typed: strict
# frozen_string_literal: true

# Homebrew formula for the TideMux local API gateway.
class Tidemux < Formula
  desc "Local OpenAI and Anthropic compatible API gateway"
  homepage "https://github.com/hs3180/tidemux"
  url "https://github.com/hs3180/tidemux/releases/download/v0.3.4/tidemux_0.3.4_d99076895592_darwin_arm64.tar.gz"
  sha256 "a159224397292bee729a9b09aa79bb47570d8d4f3792d315c96cb7c58f521189"
  license "Apache-2.0"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "tidemux"
    pkgshare.install "docs", "licenses", "sbom.spdx.json", "BUILD.txt", "LICENSE", "NOTICE",
                     "README.md", "PRIVACY.md", "SECURITY.md", "CHANGELOG.md", "SBOM.md", "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "0.3.4", shell_output("#{bin}/tidemux version").strip
  end
end

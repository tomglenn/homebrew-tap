class Nakama < Formula
  desc "Distributed server for social and realtime games and apps"
  homepage "https://heroiclabs.com"
  url "https://github.com/heroiclabs/nakama/archive/refs/tags/v3.11.0.tar.gz"
  sha256 "02b1378df6d135947741810383630a5c0370ea5c373c92dca1677c4ce887de66"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/tomglenn/homebrew-tap/releases/download/nakama-3.11.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "0af689ab46b1d5bee810834a80c7612670624420452d2f5ef7f037f573be339b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "42c3ea6aca357cd7096380b1c72333ca1a348db614c25cafd6fa25b474fb2a46"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-mod=vendor"
    bin.install "nakama"
  end

  test do
    system "true"
  end
end

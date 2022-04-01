class Nakama < Formula
  desc "Distributed server for social and realtime games and apps."
  homepage "https://heroiclabs.com"
  url "https://github.com/heroiclabs/nakama/archive/refs/tags/v3.11.0.tar.gz"
  sha256 "02b1378df6d135947741810383630a5c0370ea5c373c92dca1677c4ce887de66"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-mod=vendor"
    bin.install "nakama"
  end

  test do
    system "true"
  end
end

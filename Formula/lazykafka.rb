class Lazykafka < Formula
  desc "Terminal UI for Apache Kafka"
  homepage "https://github.com/nvh0412/lazykafka"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nvh0412/lazykafka/releases/download/v0.2.1/lazykafka-macos-arm64"
      sha256 "ec18108c375c1c94281b87ce999bbd377a6d0b7dd59fa213ace3667163ea872c"
    end
    on_intel do
      url "https://github.com/nvh0412/lazykafka/releases/download/v0.2.1/lazykafka-macos-x86_64"
      sha256 "6bb2eadaa2011be6e2957f0bfda3385d3b8efb074b0df13e2d86b895792a2c69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nvh0412/lazykafka/releases/download/v0.2.1/lazykafka-linux-arm64-musl"
      sha256 "e18c700f7620fad59afd7a151df4a27154462f4464ee695d04212f53604fcdb2"
    end
    on_intel do
      url "https://github.com/nvh0412/lazykafka/releases/download/v0.2.1/lazykafka-linux-x86_64-musl"
      sha256 "0c9e81db4bdb5333e6ec4abda28c1e960b944b25390780b0adc1b7c2a70f8a23"
    end
  end

  def install
    # Release assets are bare binaries named per-platform
    bin.install Dir["lazykafka-*"].first => "lazykafka"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazykafka --version")
  end
end

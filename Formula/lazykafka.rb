class Lazykafka < Formula
  desc "Terminal UI for Apache Kafka"
  homepage "https://github.com/nvh0412/lazykafka"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nvh0412/lazykafka/releases/download/v0.2.0/lazykafka-macos-arm64"
      sha256 "9ce222a20d30fb2af76e2d7f78d96668a9d5b5bbb3d73d841042fbbf4ccd3377"
    end
    on_intel do
      url "https://github.com/nvh0412/lazykafka/releases/download/v0.2.0/lazykafka-macos-x86_64"
      sha256 "a8b30e8a6cb792a9134d5e279e7b45f9245b4b3eeda1eb654615987de9bd5759"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nvh0412/lazykafka/releases/download/v0.2.0/lazykafka-linux-arm64-musl"
      sha256 "602996ccb6b6ba718a972572c29863d6127b294a65dfb1f7ebfc99e5c2044b2b"
    end
    on_intel do
      url "https://github.com/nvh0412/lazykafka/releases/download/v0.2.0/lazykafka-linux-x86_64-musl"
      sha256 "f26ef633a2f5d5454282664a76368452a7dca09b830b1690bfd4b46cc39950df"
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

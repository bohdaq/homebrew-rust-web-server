class Rws < Formula
  desc "rust-web-server (**rws**) is a static content web-server written in Rust."
  homepage ""
  url "https://github.com/bohdaq/rust-web-server/archive/refs/tags/8.0.5.tar.gz"
  sha256 "c0b9b00ca1fa24d5ab813bca211c13ed3becd5b447a7cb5e8f2f4084763d4a37"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end

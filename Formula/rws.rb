class Rws < Formula
  desc "Simple web-server written in Rust. The rws server can serve static content"
  homepage "https://github.com/bohdaq/rust-web-server"
  url "https://github.com/bohdaq/rust-web-server/releases/download/0.0.28/rws-0.0.28-mac.tar.gz"
  sha256 "691e1d2030ca1208a34658834ea50a6cfe6387d2bc68cdc96cea601f40c4fc0b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end

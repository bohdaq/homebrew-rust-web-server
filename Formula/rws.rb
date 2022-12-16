class Rws < Formula
  desc "rust-web-server (**rws**) is a static content web-server written in Rust."
  homepage ""
  url "https://github.com/bohdaq/rust-web-server/archive/refs/tags/8.0.0.tar.gz"
  sha256 "e1aad1e46eb0deaaf8842e74e1e058b64525361d4fcd67371775a85b7f724a96"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end

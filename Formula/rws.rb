class Rws < Formula
  desc "rust-web-server (**rws**) is a static content web-server written in Rust."
  homepage ""
  url "https://github.com/bohdaq/rust-web-server/archive/refs/tags/9.0.0.tar.gz"
  sha256 "9d67f2e53798def27ce3c9bec3d4d290f2e241afcd48664616f2df0a20b3b374"
  head "https://github.com/bohdaq/rust-web-server.git", branch: "main"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end

class Rws < Formula
  desc "Hi, rust-web-server (rws) is a simple web-server written in Rust. The rws server can serve static content inside the directory it is started."
  homepage ""
  url "https://github.com/bohdaq/rust-web-server/archive/refs/tags/0.0.28.tar.gz"
  sha256 "3d9814c2eb1bdddee8a27519ce3b04c24cb049ba756e8bfc293811b1809fca74"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end

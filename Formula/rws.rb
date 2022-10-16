# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustWebServer < Formula
  desc "Hi, rust-web-server (rws) is a simple web-server written in Rust. The rws server can serve static content inside the directory it is started."
  homepage ""
  url "https://github.com/bohdaq/rust-web-server/archive/refs/tags/0.0.28.tar.gz"
  sha256 "3d9814c2eb1bdddee8a27519ce3b04c24cb049ba756e8bfc293811b1809fca74"
  license "MIT"

  depends_on "rust" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test rust-web-server`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

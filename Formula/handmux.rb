class Handmux < Formula
  desc "Mobile-web gateway to a shared tmux server"
  homepage "https://handmux.com"
  url "https://registry.npmjs.org/handmux/-/handmux-0.36.0.tgz"
  sha256 "1cfd10ff129b27108b1d3d89fdaaa8fca301802872323dc8773c3322f977e136"
  license "AGPL-3.0-only"

  livecheck do
    url "https://registry.npmjs.org/handmux/latest"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  depends_on "node"
  depends_on "tmux"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/handmux --version")
  end
end

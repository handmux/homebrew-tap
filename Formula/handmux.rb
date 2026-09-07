class Handmux < Formula
  desc "Mobile-web gateway to a shared tmux server"
  homepage "https://handmux.com"
  url "https://registry.npmjs.org/handmux/-/handmux-0.27.1.tgz"
  sha256 "a9150765ff0295565665035145815f3fc14cf723e21831ffa0cec9fb6b13bb29"
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

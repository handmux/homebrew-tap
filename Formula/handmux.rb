class Handmux < Formula
  desc "Mobile-web gateway to a shared tmux server"
  homepage "https://handmux.com"
  url "https://registry.npmjs.org/handmux/-/handmux-0.29.1.tgz"
  sha256 "5cc9b5ad0ba34852e98fbb1b3f20c8a091d0ed4d37ac76acc2a7439e09690482"
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

class Handmux < Formula
  desc "Mobile-web gateway to a shared tmux server"
  homepage "https://handmux.com"
  url "https://registry.npmjs.org/handmux/-/handmux-0.31.0.tgz"
  sha256 "98d79aa0824da99416e5385595eabb96e416cfe4aa1f6f817f82a599fca4a9db"
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

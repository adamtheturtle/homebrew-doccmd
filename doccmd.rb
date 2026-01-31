class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/85/a4/30f0db9cf073cc1118069c7f0a71ce626680e1b179f74405d6ea89cb820e/doccmd-2026.1.31.1.tar.gz"
  sha256 "7f75490bc722af52107776ba31d04132ca563e991ecb33b8a80d4ad450eb0ac3"

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

  resource "dulwich" do
    url "https://files.pythonhosted.org/packages/ee/df/4178b6465e118e6e74fd78774b451953dd53c09fdec18f2c4b3319dd0485/dulwich-1.0.0.tar.gz"
    sha256 "3d07104735525f22bfec35514ac611cf328c89b7acb059316a4f6e583c8f09bc"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
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
    url "https://files.pythonhosted.org/packages/7e/87/ba3d507fea762f21e4b68872ca6cb8ac5fc01cd2ad75a2005ad262e87230/sybil_extras-2026.1.27.tar.gz"
    sha256 "4a35fd703c6c2459686183899672f8c0e9c5f5d6b42b1046c66c788fc3086d8c"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

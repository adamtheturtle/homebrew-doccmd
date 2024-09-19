class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "CLI for Vuforia Web Services"
  homepage "None"
  url "https://files.pythonhosted.org/packages/71/06/925e9ea14ffd92b45116e1b1f1e93141c30ad052fe51a90d3b76d6a07ac4/doccmd-2024.9.19.tar.gz"
  sha256 "2cffd6dcb69a9f118f373a5b0213c89a3fb66007f747590d437d77e37281bd0e"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/96/15/4e623478a9628ad4cee2391f19aba0b16c1dd6fedcb2a399f0928097b597/beartype-0.18.5.tar.gz"
    sha256 "264ddc2f1da9ec94ff639141fbe33d22e12a9f75aa863b83b7046ffff1381927"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/8e/62/8336eff65bcbc8e4cb5d05b55faf041285951b6e80f33e2bff2024788f31/pygments-2.18.0.tar.gz"
    sha256 "786ff802f32e91311bff3889f6e9a86e81505fe99f2735bb6d60ae0c5004f199"
  end

  resource "sybil" do
    url "https://files.pythonhosted.org/packages/36/e9/717ec58fa68db4707d9c8f1d7e20aa6665de6fc294c5c4956ad703fd9e25/sybil-7.1.1.tar.gz"
    sha256 "afcd9faad896bdd7907eaa6df6cff1d63247f740a14f27c297cc08be135b16e2"
  end

  resource "sybil-extras" do
    url "https://files.pythonhosted.org/packages/1d/d0/54199e457168cbe009dba548607b7d00cbf3405362a1e46f341a6c72e1aa/sybil_extras-2024.9.18.1.tar.gz"
    sha256 "0c430db83ba901e31043f7fd3fc8145f8d447919dc12d471ed8bb52b1faad335"
  end

  resource "tee-subprocess" do
    url "https://files.pythonhosted.org/packages/a2/ec/1a80f3cb0f878fb6cb713ad4d39decb9d62adc939e2ad7f8dc13c158e315/tee_subprocess-1.0.0.post0.tar.gz"
    sha256 "b0358226a67f5a1e93c2f9d8e79f2ebcc325451a20e294e44537f7620b70d0f7"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

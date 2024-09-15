class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "CLI for Vuforia Web Services"
  homepage "None"
  url "https://files.pythonhosted.org/packages/42/08/381200b5861528fc89a8bb0bfa5c0515aaba015ade9e2be4cf09d37c7cbf/doccmd-2024.9.15.tar.gz"
  sha256 "cdaecb7e685d44899479916e0424c86655b68ce1269a31b32c6ae80083e0aa37"

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

  resource "subprocess-tee" do
    url "https://files.pythonhosted.org/packages/d7/22/991efbf35bc811dfe7edcd749253f0931d2d4838cf55176132633e1c82a7/subprocess_tee-0.4.2.tar.gz"
    sha256 "91b2b4da3aae9a7088d84acaf2ea0abee3f4fd9c0d2eae69a9b9122a71476590"
  end

  resource "sybil" do
    url "https://files.pythonhosted.org/packages/45/a9/d04a7ca60f6cac59251a1b054b47f9d0113d0c1b4b1188b797f1d92b3d7e/sybil-7.0.0.tar.gz"
    sha256 "0553c927fd5b79893aa19e3498e511f1942cd0c33c007fea0a96bbc412c1261c"
  end

  resource "sybil-extras" do
    url "https://files.pythonhosted.org/packages/69/12/063f3ca6726edfeea6dfe311f61ada6650f03be09ef9f7888ce7f491945b/sybil_extras-2024.9.15.tar.gz"
    sha256 "fcab7d21f17b1b7080d8202673b58607be16886354f52ed34f03650855f6aff6"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

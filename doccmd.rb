class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "CLI for Vuforia Web Services"
  homepage "None"
  url "https://files.pythonhosted.org/packages/31/d3/77ddf8c5e2d78375dd26e9b8ecf7f8048c2750ad210d01cf5009dac7e668/doccmd-2024.9.11.5.tar.gz"
  sha256 "fc688666cf761cf3505708c98d2c6f9b7df6f63fc02069c1d2b918e29e21e1cc"

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
    url "https://files.pythonhosted.org/packages/88/8a/3b28a11d200aa43dbd307d1ebd7740cf1a8c14d9baa421433f9e29e3881c/sybil-6.1.1.tar.gz"
    sha256 "8fb4f2c3582d1fe6705d1ae3a31f93fec7619f634940a8fcbf5d1b7d18183917"
  end

  resource "sybil-extras" do
    url "https://files.pythonhosted.org/packages/50/e7/a876b0d5c933a044e635a1dd83153fff76d977c91a08e36d7796a0927dc4/sybil_extras-2024.9.10.tar.gz"
    sha256 "2d181f39ed5057ecbd711b26aa4fcf709b09f5cf83bc7e96acddba4c17afdf53"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

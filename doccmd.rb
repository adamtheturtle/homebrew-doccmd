class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "CLI for Vuforia Web Services"
  homepage "None"
  url "https://files.pythonhosted.org/packages/08/a1/d83d5f56bff4840626c3b9deb698b65f52a7024bad00208de6bd2fcc26fb/doccmd-2024.9.20.tar.gz"
  sha256 "bf71264dfedc9293a393e554a7598d5e4a5b9d129e657da335b90ca16fc24a79"

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
    url "https://files.pythonhosted.org/packages/1e/9e/a5bbc15683cf8a8d84d128363d707aa88cfa6a5e3bbb763fbd94e4afe41c/sybil-8.0.0.tar.gz"
    sha256 "f175f0c381fe87860089ca0696093b3969d9e8c424da2226767d8d2451fe3e07"
  end

  resource "sybil-extras" do
    url "https://files.pythonhosted.org/packages/a5/77/efda4e684c7ee97225ca5f44a6111c7a2dd5e76927274a34d5edf786df7f/sybil_extras-2024.9.20.tar.gz"
    sha256 "b2c98247b94c44f7cb0920126c61a73b7215793d90f5413d96cb3f124e86b974"
  end

  resource "tee-subprocess" do
    url "https://files.pythonhosted.org/packages/07/21/ae9a97532daf4fc7bbe1059d6ee8b230dd43e8d3e7e3e835315a1b3e622f/tee_subprocess-1.1.0.tar.gz"
    sha256 "2ee099876bfcd3cdbb2768d122fa2b5275175586e533a3479b93dbc4122397dc"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

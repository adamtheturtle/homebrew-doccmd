class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/28/9f/c9d97a4bb8d3193d6fd87a527c31d2155f70a6dbb579c84227d75524680f/doccmd-2024.11.14.tar.gz"
  sha256 "4a2262c2f6f9834b3e05de2498c48b060eae0fa9b7ae89d9a9ed28cd005e031e"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/6f/e1/00515b97afa3993b4a314e4bc168fbde0917fd5845435cb6f16a19770746/beartype-0.19.0.tar.gz"
    sha256 "de42dfc1ba5c3710fde6c3002e3bd2cad236ed4d2aabe876345ab0b4234a6573"
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
    url "https://files.pythonhosted.org/packages/f8/de/c6268b0e266654274f7b8eaeb26d1753ace5f424ac40bb1b72be1be57545/sybil-9.0.0.tar.gz"
    sha256 "0856c253e40d448d6e15d89044ef34c8b5d1f63f685f9371f4bbc9f75f072fa5"
  end

  resource "sybil-extras" do
    url "https://files.pythonhosted.org/packages/b2/f1/c6b687e62b8deceeb47c47a9730fc40d794058e98fd43d4bbf47ca2e356b/sybil_extras-2024.10.18.tar.gz"
    sha256 "1d3fa585c852958c27a8cafadf50d75c8abbf6793be0c4c1d06aff57bb2c59ae"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

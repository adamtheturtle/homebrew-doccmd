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
    url "https://files.pythonhosted.org/packages/b9/2e/0090cbf739cee7d23781ad4b89a9894a41538e4fcf4c31dcdd705b78eb8b/click-8.1.8.tar.gz"
    sha256 "ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a"
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
    url "https://files.pythonhosted.org/packages/c4/6f/f1dea018154311a3c898c5508d6c1b500287b28e6cec608cdf5c6b06a4e9/sybil_extras-2024.12.26.tar.gz"
    sha256 "2fe858c1dac043d27d1d8d830e7fb6266f18dd0dbd859b71b82effb865dbaa4e"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

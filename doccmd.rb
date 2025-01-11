class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/e6/49/c3aa796435746e06b259bd0a3ea92781ab3ae3b061d6e9210d8c94d1ac1f/doccmd-2025.1.11.tar.gz"
  sha256 "89b3820042543ac401b25d406a9c9a4cf6409263237e1583a21cfbe9575c5bc0"

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
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
  end

  resource "sybil" do
    url "https://files.pythonhosted.org/packages/f8/de/c6268b0e266654274f7b8eaeb26d1753ace5f424ac40bb1b72be1be57545/sybil-9.0.0.tar.gz"
    sha256 "0856c253e40d448d6e15d89044ef34c8b5d1f63f685f9371f4bbc9f75f072fa5"
  end

  resource "sybil-extras" do
    url "https://files.pythonhosted.org/packages/0c/25/a4467e637abf0087d52e81b29123f7f43e8c845cd5c35b010607f5212a09/sybil_extras-2025.1.11.tar.gz"
    sha256 "7ddeb9c367a7f85a9b8dac25e0648697b6bee79cffea007608f9f70620abe8d2"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

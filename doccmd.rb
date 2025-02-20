class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/d3/ad/c05251209b5ba1b8340f1955ff2be63eafffed7e89708a76ed07914d719b/doccmd-2025.2.20.4.tar.gz"
  sha256 "9b383fa1b2f7c6ad00fb4cac714cac303c1dc17079737cb0e12d5193715dd911"

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
    url "https://files.pythonhosted.org/packages/4f/6a/70301b41715b24b5372b22e83bea6637d92f017e7718fffff78ae0a80381/sybil-9.1.0.tar.gz"
    sha256 "c63c14c9843c62fa994c777eb48c0632f62be5c499ecbe05c1d130157ed6a6ca"
  end

  resource "sybil-extras" do
    url "https://files.pythonhosted.org/packages/66/3f/df2d64618ed60b347c13b18424edcd9d3d790e7efbf12e1557e6db9e0adb/sybil_extras-2025.2.19.1.tar.gz"
    sha256 "70f57bf0e1819c763eda0fe9e1ef5f0e8cb340df9674d1594172153ea76ff36c"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

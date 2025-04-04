class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/3d/98/5eb5d330f1a7366fcb55260109aca4c90754b0e19820e6fcea4f1bd671c8/doccmd-2025.4.4.tar.gz"
  sha256 "34910cba1ecefa4b5e5550be9fe434452cd0290f5f6c454e275cd8240fa5a35e"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/8a/99/eaf0847301a6ca2042927c83f8cc72a29c153132ce49d9a720fe121440ba/beartype-0.20.2.tar.gz"
    sha256 "38c60c065ad99364a8c767e8a0e71ba8263d467b91414ed5dcffb7758a2e8079"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
    sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
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
    url "https://files.pythonhosted.org/packages/fd/2d/2474af4623401edbcd75245bcb51f4c51e898d531856dcb3af463da8873f/sybil_extras-2025.4.3.tar.gz"
    sha256 "1b1d7190d082a2ccae448b8cebef0f3b856c324696746aba19a13e4420b03371"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

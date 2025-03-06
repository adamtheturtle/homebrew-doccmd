class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/55/06/1e9ab4b7363fe895e8bbe652cd985bd957501fbd245b3aafb32e4177e91b/doccmd-2025.2.20.7.tar.gz"
  sha256 "12304c4f335f220f911b804adc8858c73c9a5b79029f363d80236548344ee68e"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/7d/48/fe1177f4272a1bc344f3371414aa5b76e19c30d7280d711ce90c5335a6f5/beartype-0.20.0.tar.gz"
    sha256 "599ecc86b88549bcb6d1af626f44d85ffbb9151ace5d7f9f3b493dce2ffee529"
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
    url "https://files.pythonhosted.org/packages/1f/66/e2b0c86d68991230e3cfe09c28856d885cd66b0297dc9e422ed9f744d875/sybil_extras-2025.3.6.tar.gz"
    sha256 "441622cf90e287fa49a4fc1f15f60dec6fd71ae3268e62e384255901521fb508"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

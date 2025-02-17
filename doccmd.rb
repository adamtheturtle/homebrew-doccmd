class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/26/a8/ce580bfebe477182a965cf3d10259f36d123c3a6bc0f3439bce835b6463b/doccmd-2025.2.17.tar.gz"
  sha256 "f30adaa37384c0bd1553527b6353893c604d27720e5f7484712a66301f62dbad"

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
    url "https://files.pythonhosted.org/packages/b6/bc/62187b7d1ad29209afef3516b63e64e29668d3d075bb774ca711905ea29e/sybil_extras-2025.2.16.1.tar.gz"
    sha256 "9a4af32e40285ca4378a363fd4894d09aec8cef97aeb230e2b2ca53d7b86c788"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

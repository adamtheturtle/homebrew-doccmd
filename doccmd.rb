class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/b3/5d/453896d187264d946a6334fe081dd7c5d4943f54efcd2ac21710796e742a/doccmd-2025.10.18.tar.gz"
  sha256 "8878f17b02679f49da7ab66f1ad2c3df729d0c0e5a85558e180cd1121180e769"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/04/96/43ed27f27127155f24f5cf85df0c27fd2ac2ab67d94cecc8f76933f91679/beartype-0.22.2.tar.gz"
    sha256 "ff3a7df26af8d15fa87f97934f0f6d41bbdadca971c410819104998dd26013d2"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/13/69/33ddede1939fdd074bce5434295f38fae7136463422fe4fd3e0e89b98062/charset_normalizer-3.4.4.tar.gz"
    sha256 "94537985111c35f28720e43603b8e7b43a6ecfb2ce1d3058bbe955b73404e21a"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/46/61/de6cd827efad202d7057d93e0fed9294b96952e188f7384832791c7b2254/click-8.3.0.tar.gz"
    sha256 "e7b8232224eba16f4ebe410c25ced9f7875cb5f3263ffc93cc3e8da705e229c4"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  resource "sybil" do
    url "https://files.pythonhosted.org/packages/fe/01/cd109cc45ad8be87a3338ebb2d0e9f4a46a635952a7cf25f1f30fd13a794/sybil-9.2.0.tar.gz"
    sha256 "a7cbccf4b06af7e946a218e23fd59fde36738e91eb698b15619a4d5f97b176bb"
  end

  resource "sybil-extras" do
    url "https://files.pythonhosted.org/packages/7d/23/aa74129f75a7a93036cd3c94ed5aa75d3fdc0997068a057c5931f4042d8d/sybil_extras-2025.4.7.tar.gz"
    sha256 "dd8d84318024bef149975d83075503e860269865750580a1b61205ec7a6d1bdc"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/de/91/300ce8650a6bd1ed99978174aa670dff349147ad45c8a2b2f26ec51b9493/doccmd-2025.9.19.tar.gz"
  sha256 "5bbf334eec75b467b96e64c3e06cc1d8d7c55a53fd0a75ec6065011a7db8b104"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/0d/f9/21e5a9c731e14f08addd53c71fea2e70794e009de5b98e6a2c3d2f3015d6/beartype-0.21.0.tar.gz"
    sha256 "f9a5078f5ce87261c2d22851d19b050b64f6a805439e8793aecf01ce660d3244"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/83/2d/5fd176ceb9b2fc619e63405525573493ca23441330fcdaee6bef9460e924/charset_normalizer-3.4.3.tar.gz"
    sha256 "6fce4b8500244f6fcb71465d4a4930d132ba9ab8e71a7859e6a5d59851068d14"
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

class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/a0/d8/98b926bca84611e470c49bc273c69545e550fd8d6f5a613d730f49e2c619/doccmd-2025.10.25.tar.gz"
  sha256 "3da1576a3dbf74b9b6d74d72dca420aa059fa37590beebd3ea940174c6b422d1"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/86/51/97f0d11d613d3b9650bd75588ff5206a408afcdc337ab7108dafb4c8d1ec/beartype-0.22.3.tar.gz"
    sha256 "391c457bd6463d6fb0ec5d7e28ad44c336ae02dbaaae0fc55c053b071554855b"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/13/69/33ddede1939fdd074bce5434295f38fae7136463422fe4fd3e0e89b98062/charset_normalizer-3.4.4.tar.gz"
    sha256 "94537985111c35f28720e43603b8e7b43a6ecfb2ce1d3058bbe955b73404e21a"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/46/61/de6cd827efad202d7057d93e0fed9294b96952e188f7384832791c7b2254/click-8.3.0.tar.gz"
    sha256 "e7b8232224eba16f4ebe410c25ced9f7875cb5f3263ffc93cc3e8da705e229c4"
  end

  resource "cloup" do
    url "https://files.pythonhosted.org/packages/46/cf/09a31f0f51b5c8ef2343baf37c35a5feb4f6dfdcbd0592a014baf837f2e4/cloup-3.0.8.tar.gz"
    sha256 "f91c080a725196ddf74feabd6250266f466e97fc16dfe21a762cf6bc6beb3ecb"
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

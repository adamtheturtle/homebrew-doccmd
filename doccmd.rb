class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "CLI for Vuforia Web Services"
  homepage "None"
  url "https://files.pythonhosted.org/packages/b9/94/4b68c39d902da9809fa6740e54bf71a5fba52731c98a83b964ca3557d2a9/doccmd-2024.9.26.tar.gz"
  sha256 "26e3a6521e95de9ddc4056e8d68fb3add82bd2f6354e2ff85add67dcf912d4ae"

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
    url "https://files.pythonhosted.org/packages/1e/9e/a5bbc15683cf8a8d84d128363d707aa88cfa6a5e3bbb763fbd94e4afe41c/sybil-8.0.0.tar.gz"
    sha256 "f175f0c381fe87860089ca0696093b3969d9e8c424da2226767d8d2451fe3e07"
  end

  resource "sybil-extras" do
    url "https://files.pythonhosted.org/packages/84/11/8ac80cfa0dbcc877fd5e2367ad48f67082dd29e4b2ca579e6d90a92bdaa8/sybil_extras-2024.9.22.1.tar.gz"
    sha256 "24ec45eb5901e199102f473e8725e58946b46e60e488c81623d73905be26d645"
  end

  resource "tee-subprocess" do
    url "https://files.pythonhosted.org/packages/07/21/ae9a97532daf4fc7bbe1059d6ee8b230dd43e8d3e7e3e835315a1b3e622f/tee_subprocess-1.1.0.tar.gz"
    sha256 "2ee099876bfcd3cdbb2768d122fa2b5275175586e533a3479b93dbc4122397dc"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

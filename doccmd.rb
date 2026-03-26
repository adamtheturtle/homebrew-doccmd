class Doccmd < Formula
  include Language::Python::Virtualenv

  desc "Run tools against code blocks in documentation"
  homepage "None"
  url "https://files.pythonhosted.org/packages/46/98/8a95e18c9bfdd3c5ec1a95886dae6ca5663ca9e2d3d1601bde6a892c7720/doccmd-2026.3.26.tar.gz"
  sha256 "3ab5848f44cbb6be193ee1bb733f7708909ae24902d81e4c7eaf7d094bec5d2f"

  depends_on "python3"

  resource "alabaster" do
    url "https://files.pythonhosted.org/packages/a6/f8/d9c74d0daf3f742840fd818d69cfae176fa332022fd44e3469487d5a9420/alabaster-1.0.0.tar.gz"
    sha256 "c00dca57bca26fa62a6d7d0a9fcce65f3e026e9bfe33e9c538fd3fbb2144fd9e"
  end

  resource "babel" do
    url "https://files.pythonhosted.org/packages/7d/6b/d52e42361e1aa00709585ecc30b3f9684b3ab62530771402248b1b1d6240/babel-2.17.0.tar.gz"
    sha256 "0c54cffb19f690cdcc52a3b50bcbf71e07a808d1c80d549f2459b9d2cf0afb9d"
  end

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/c7/94/1009e248bbfbab11397abca7193bea6626806be9a327d399810d523a07cb/beartype-0.22.9.tar.gz"
    sha256 "8f82b54aa723a2848a56008d18875f91c1db02c32ef6a62319a002e3e25a975f"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/e0/2d/a891ca51311197f6ad14a7ef42e2399f36cf2f9bd44752b3dc4eab60fdc5/certifi-2026.1.4.tar.gz"
    sha256 "ac726dd470482006e014ad384921ed6438c457018f4b3d204aea4281258b2120"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/7b/60/e3bec1881450851b087e301bedc3daa9377a4d45f1c26aa90b0b235e38aa/charset_normalizer-3.4.6.tar.gz"
    sha256 "1ae6b62897110aa7c79ea2f5dd38d1abca6db663687c0b1ad9aed6f6bae3d9d6"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "click-compose" do
    url "https://files.pythonhosted.org/packages/45/9f/7b380e5318643348e256ec31df1362b74dfa12733f76b1a97e1171ba74fe/click_compose-2025.10.27.3.tar.gz"
    sha256 "6d3326a13b690ac7a0f0e99de785aa78ea81d130ba02d609e6367a7af23477a5"
  end

  resource "cloup" do
    url "https://files.pythonhosted.org/packages/46/cf/09a31f0f51b5c8ef2343baf37c35a5feb4f6dfdcbd0592a014baf837f2e4/cloup-3.0.8.tar.gz"
    sha256 "f91c080a725196ddf74feabd6250266f466e97fc16dfe21a762cf6bc6beb3ecb"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/ae/ed/aefcc8cd0ba62a0560c3c18c33925362d46c6075480bfa4df87b28e169a9/docutils-0.21.2.tar.gz"
    sha256 "3a6b18732edf182daa3cd12775bbb338cf5691468f91eeeb109deff6ebfa986f"
  end

  resource "dulwich" do
    url "https://files.pythonhosted.org/packages/02/c4/bfe2a4e5b203f87ea925339691dd6e379e1a80d805dff0502e496bcaec39/dulwich-1.1.0.tar.gz"
    sha256 "9aa855db9fee0a7065ae9ffb38e14e353876d82f17e33e1a1fb3830eb8d0cf43"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "imagesize" do
    url "https://files.pythonhosted.org/packages/a7/84/62473fb57d61e31fef6e36d64a179c8781605429fd927b5dd608c997be31/imagesize-1.4.1.tar.gz"
    sha256 "69150444affb9cb0d5cc5a92b3676f0b2fb7cd9ae39e947a5e11a36b4497cd4a"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "mdit-py-plugins" do
    url "https://files.pythonhosted.org/packages/b2/fd/a756d36c0bfba5f6e39a1cdbdbfdd448dc02692467d83816dff4592a1ebc/mdit_py_plugins-0.5.0.tar.gz"
    sha256 "f4918cb50119f50446560513a8e311d574ff6aaed72606ddae6d35716fe809c6"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "myst-parser" do
    url "https://files.pythonhosted.org/packages/33/fa/7b45eef11b7971f0beb29d27b7bfe0d747d063aa29e170d9edd004733c8a/myst_parser-5.0.0.tar.gz"
    sha256 "f6f231452c56e8baa662cc352c548158f6a16fcbd6e3800fc594978002b94f3a"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/65/ee/299d360cdc32edc7d2cf530f3accf79c4fca01e96ffc950d8a52213bd8e4/packaging-26.0.tar.gz"
    sha256 "00243ae351a257117b6a241061796684b084ed1c516a08c48a3f7e147a9d80b4"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "roman-numerals" do
    url "https://files.pythonhosted.org/packages/ae/f9/41dc953bbeb056c17d5f7a519f50fdf010bd0553be2d630bc69d1e022703/roman_numerals-4.1.0.tar.gz"
    sha256 "1af8b147eb1405d5839e78aeb93131690495fe9da5c91856cb33ad55a7f1e5b2"
  end

  resource "snowballstemmer" do
    url "https://files.pythonhosted.org/packages/75/a7/9810d872919697c9d01295633f5d574fb416d47e535f258272ca1f01f447/snowballstemmer-3.0.1.tar.gz"
    sha256 "6d5eeeec8e9f84d4d56b847692bacf79bc2c8e90c7f80ca4444ff8b6f2e52895"
  end

  resource "Sphinx" do
    url "https://files.pythonhosted.org/packages/cd/bd/f08eb0f4eed5c83f1ba2a3bd18f7745a2b1525fad70660a1c00224ec468a/sphinx-9.1.0.tar.gz"
    sha256 "7741722357dd75f8190766926071fed3bdc211c74dd2d7d4df5404da95930ddb"
  end

  resource "sphinxcontrib-applehelp" do
    url "https://files.pythonhosted.org/packages/ba/6e/b837e84a1a704953c62ef8776d45c3e8d759876b4a84fe14eba2859106fe/sphinxcontrib_applehelp-2.0.0.tar.gz"
    sha256 "2f29ef331735ce958efa4734873f084941970894c6090408b079c61b2e1c06d1"
  end

  resource "sphinxcontrib-devhelp" do
    url "https://files.pythonhosted.org/packages/f6/d2/5beee64d3e4e747f316bae86b55943f51e82bb86ecd325883ef65741e7da/sphinxcontrib_devhelp-2.0.0.tar.gz"
    sha256 "411f5d96d445d1d73bb5d52133377b4248ec79db5c793ce7dbe59e074b4dd1ad"
  end

  resource "sphinxcontrib-htmlhelp" do
    url "https://files.pythonhosted.org/packages/43/93/983afd9aa001e5201eab16b5a444ed5b9b0a7a010541e0ddfbbfd0b2470c/sphinxcontrib_htmlhelp-2.1.0.tar.gz"
    sha256 "c9e2916ace8aad64cc13a0d233ee22317f2b9025b9cf3295249fa985cc7082e9"
  end

  resource "sphinxcontrib-jsmath" do
    url "https://files.pythonhosted.org/packages/b2/e8/9ed3830aeed71f17c026a07a5097edcf44b692850ef215b161b8ad875729/sphinxcontrib-jsmath-1.0.1.tar.gz"
    sha256 "a9925e4a4587247ed2191a22df5f6970656cb8ca2bd6284309578f2153e0c4b8"
  end

  resource "sphinxcontrib-qthelp" do
    url "https://files.pythonhosted.org/packages/68/bc/9104308fc285eb3e0b31b67688235db556cd5b0ef31d96f30e45f2e51cae/sphinxcontrib_qthelp-2.0.0.tar.gz"
    sha256 "4fe7d0ac8fc171045be623aba3e2a8f613f8682731f9153bb2e40ece16b9bbab"
  end

  resource "sphinxcontrib-serializinghtml" do
    url "https://files.pythonhosted.org/packages/3b/44/6716b257b0aa6bfd51a1b31665d1c205fb12cb5ad56de752dfa15657de2f/sphinxcontrib_serializinghtml-2.0.0.tar.gz"
    sha256 "e9d912827f872c029017a53f0ef2180b327c3f7fd23c87229f7a8e8b70031d4d"
  end

  resource "sybil" do
    url "https://files.pythonhosted.org/packages/35/aa/7c546894cd0ae2a9848e2c2f9b42d5c2a8f232f6cdd6968ad7b6752d95fc/sybil-10.0.0.tar.gz"
    sha256 "442c14a85a897c17c2d72db00fa8ea49cee6d89aa1150677c1d34a028b4f3e23"
  end

  resource "sybil-extras" do
    url "https://files.pythonhosted.org/packages/a3/af/e3ea947a4710016bc83482f69552c7ba962033dc25a2062af26b8c824b44/sybil_extras-2026.3.1.6.tar.gz"
    sha256 "88a2518a273d5ae6f25bf4dcaaa8f35a7b8db0aa92403fcd8f005e51573d4a63"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

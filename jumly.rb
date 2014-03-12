require 'formula'

HOMEBREW_JUMLY_VERSION = '0.1.5-1'

class Jumly < Formula

  homepage 'https://github.com/tmtk75/homebrew-jumly/'
  url 'https://github.com/tmtk75/homebrew-jumly.git', :tag => "v#{HOMEBREW_JUMLY_VERSION}"
  version HOMEBREW_JUMLY_VERSION
  head 'https://github.com/tmtk75/homebrew-jumly.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin + 'jumly').chmod 0755
  end

end

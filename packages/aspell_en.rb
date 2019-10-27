require 'package'

class Aspell_en < Package
  description 'English Aspell Dictionary'
  homepage 'https://ftpmirror.gnu.org/aspell/dict/0index.html'
  version '2019.10.06-0'
  source_url 'https://ftpmirror.gnu.org/aspell/dict/en/aspell6-en-2019.10.06-0.tar.bz2'
  source_sha256 '24334b4daac6890a679084f4089e1ce7edbe33c442ace776fa693d8e334f51fd'

  binary_url ({
  })
  binary_sha256 ({
  })

  depends_on 'aspell'

  def self.build
    system './configure'
    system 'make'
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end

require 'formula'

class Docker < Formula
  homepage 'https://www.docker.io/'

  if MacOS.prefer_64_bit?
    url 'https://get.docker.io/builds/Darwin/x86_64/docker-0.8.0.tgz'
    sha1 'ab78fe14a005d4168a6c89f708a1bcd24a2707d6'
  else
    url 'https://get.docker.io/builds/Darwin/i386/docker-0.8.0.tgz'
    sha1 '15fa9744ac56243367c162353d7f109fdfe54fec'
  end

  depends_on :arch => :intel

  def install
    bin.install 'local/bin/docker'
  end

  test do
    system "#{bin}/docker"
  end
end

class Dbhist < Formula
  desc "bash history in sqlite"
  homepage "https://www.outcoldman.com/en/archive/2017/07/19/dbhist/"
  url "https://gist.githubusercontent.com/outcoldman/daa3d9cb5c67ce18079ce93f08ea06e1/raw/3d0c05091564e3e38e0d6c68a89914f70a352ed7/dbhist.sh"
  # Version 1 of the gist.
  version "1"
  sha256 "4eadbef92e8d323c564ce3854968f89d55b76e953a4f33a02a18df1dd2d5f11d"

  def install
    lib.install "dbhist.sh"
  end

  test do
    system "#{lib}/dbhist.sh"
  end

  def caveats; <<~EOF
To use dbhist you need to tell bash to store commands in history with time in
Unixtime format. After that source the file. E.g:

export HISTTIMEFORMAT="%s "
source /usr/local/lib/dbhist.sh

    EOF
  end
end

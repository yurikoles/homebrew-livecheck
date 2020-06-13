class Makedepend
  livecheck do
    url "https://xorg.freedesktop.org/releases/individual/util/"
    regex(/href=.*?makedepend-v?(\d+(?:\.\d+)+)\.t/i)
  end
end

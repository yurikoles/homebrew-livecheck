class Tmux
  livecheck do
    url "https://github.com/tmux/tmux/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+[a-z]?)["' >]}i)
  end
end

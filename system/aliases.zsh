# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# RAINBOW SKYLINES via lolcat and spark
#   `brew install lolcat`   [Ruby version of LOLCAT]
#   `pip install lolcat`    [Python version of LOLCAT] 
#   `snap install lolcat-c` [C version of LOLCAT]
#   `brew install spark` [or just append spark.sh to PATH]
if $(lolcat -v &> /dev/null) && $(sparks &> /dev/null)
then 
  alias skip='echo; echo; seq 1 $(tput cols) | sort -R | spark | lolcat -a; echo; echo'
  alias clc='clear; skip'
fi

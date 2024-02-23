# eza: https://github.com/eza-community/eza
# exa: https://the.exa.website/

if _has exa; then
  unalias l
  unalias ls
  unalias ll
  unalias la
  unalias ldot

  # general use
  alias ls='exa'                                                          # ls
  alias l='exa -lbF --git'                                                # list, size, type, git
  alias ll='exa -lbGF --git'                                             # long list
  alias llm='exa -lbGd --git --sort=modified'                            # long list, modified date sort
  alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
  alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list

  # specialty views
  alias lS='exa -1'                                                      # one column, just names
  alias lt='exa --tree --level=2'                                        # tree
fi

#### ------------------------------

#### exa - Color Scheme Definitions

#### ------------------------------

export EXA_COLORS="\
uu=36:\
gu=37:\
sn=32:\
sb=32:\
da=34:\
ur=34:\
uw=35:\
ux=36:\
ue=36:\
gr=34:\
gw=35:\
gx=36:\
tr=34:\
tw=35:\
tx=36:"


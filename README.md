# dotfiles

![example](https://1ysb2nguma.execute-api.eu-central-1.amazonaws.com/Test/ci-status-gott-edeng-gatcli)

My dotfiles. What else were you expecting?

## Use

    mkdr -p ~/src
    pushd ~/src
    git clone git@github.com:ianchesal/dotfiles.git
    cd dotfiles
    rake all

You can link up some of the bits and pieces using the included `Rakefile`. See:

    rake -T

for the targets you can run to link up pieces. Not everything is available for
automatic installation via the `Rakefile`.

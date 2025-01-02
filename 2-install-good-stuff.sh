#!/bin/bash

## Create `subl` alias to start sublime
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

## Git push current branch as default
git config --global push.default current

## Use keychain for credentials
git config --global credential.helper osxkeychain


## Generate ssh-key
# ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -N ""

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# install fuzzy file finder and bat
# https://www.youtube.com/watch?v=oTNRvnQLLLs
brew install fzf
brew install bat

# Allow airport as a shell command
#sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport

# Install quicklook stuff
# qlcolorcode    - code
# qlstephen      - all files without ending
# qlmarkdown     - markdown
# quicklook-json -
# betterzip      -
# qlimagesize    -
# qlvideo        -
brew install qlcolorcode qlstephen qlmarkdown quicklook-json betterzip qlimagesize qlvideo
brew remove qlcolorcode qlstephen qlmarkdown quicklook-json betterzip qlimagesize qlvideo
xattr -d -r com.apple.quarantine ~/Library/QuickLook

# Set gnu sed and grep as default and set up syntax hightlight

brew install source-highlight openssl wget tree nano gnu-sed grep findutils watch


brew install \
  source-highlight \
  openssl \
  wget \
  tree \
  nano \
  gnu-sed \
  grep
mv /usr/local/bin/gsed /usr/local/bin/sed
mv /usr/local/bin/ggrep /usr/local/bin/grep
mv /usr/local/bin/ggrep /usr/local/bin/grep

mv /usr/local/bin/gegrep /usr/local/bin/egrep
mv /usr/local/bin/gfgrep /usr/local/bin/fgrep

sudo easy_install Pygments
style=`find /usr/local/Cellar/source-highlight -type f -iname 'esc.style'`
sed -i -e 's/string [^;]*/string green /' $style
sed -i -e 's/symbol [^;]*/symbol purple /' $style
sed -i -e 's/cbracket [^;]*/cbracket purple /' $style
sed -i -e 's/regexp [^;]*/regexp yellow /' $style
# TODO: Where is cbracket och regexp?

# Prepare .nanorc for alt+arrow word jump and syntax highlight
cat <<EOF > ~/.nanorc
unbind M-B all
bind M-B prevword main
unbind M-F all
bind M-F nextword main
EOF
find /usr/local/Cellar/nano/ -type f -iname '*.nanorc' -exec echo >> .nanorc {} \;

# Setup python
brew install python3
(
  cd ~/temp
  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  sudo python get-pip.py
)

# Finally set .zshrc
cp ./dots/bash/.zshrc


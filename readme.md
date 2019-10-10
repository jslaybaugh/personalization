## Configure Terminal

Load and use `jslaybaugh.terminal`


## Install

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
(or latest instructions at https://brew.sh)

```
$ brew install git
```

```
$ brew install bash-completion
```
then add this to your .bash_profile:
```
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
```
(http://stackoverflow.com/a/18898614/331855)


```
$ vi ~/.bash_profile
```

Add this:
```
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[1;36m\]"
NO_COLOR="\[\033[0m\]"
GIT_STATUS='$(__git_ps1 " [%s]")'
PROMPT_CHAR='\$ '
GIT_PS1_SHOWDIRTYSTATE=true
PS1="${GREEN}\u@\h${YELLOW} \w${RED}${GIT_STATUS} ${CYAN}${PROMPT_CHAR}${NO_COLOR}"
```

## Git Config

```
$ git config --global push.default matching
$ git config --global merge.keepBackup false
$ git config --global merge.tool custom
$ git config --global mergetool.custom.cmd '/Applications/p4merge.app/Contents/Resources/launchp4merge "$PWD/$BASE" "$PWD/$REMOTE" "$PWD/$LOCAL" "$PWD/$MERGED"'
$ git config --global mergetool.custom.keepTemporaries false
$ git config --global mergetool.custom.trustExitCode false
$ git config --global mergetool.custom.keepBackup false
$ git config --global mergetool.keepBackup false
$ git config --global user.name 'Jorin Slaybaugh'
$ git config --global user.email 'jslaybaugh@gmail.com'
$ git config --global color.ui true
$ git config --global color.branch auto
$ git config --global color.status auto
$ git config --global color.diff auto
```

## Keystrokes and Parallels

* Turn off F6 in Parallels preferences
* Map Cmd + Right Arrow to End
* Map Cmd + Left Arrow to Home

```
$ mkdir -p ~/Library/KeyBindings
$ cd ~/Library/KeyBindings
$ vi DefaultKeyBinding.dict
```
Paste in
```
{
    "\UF729"  = "moveToBeginningOfLine:";
    "\UF72B"  = "moveToEndOfLine:";
    "$\UF729" = "moveToBeginningOfLineAndModifySelection:";
    "$\UF72B" = "moveToEndOfLineAndModifySelection:";
}
```
Log out and log back in
(https://apple.stackexchange.com/a/16136/37352)



# 2019 OSX Catalina ZSH

install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
```
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
````

in .zshrc:

* pick the `af-magic` theme
* add the following plugins: `osx` `git` `git-prompt`
* edit the `af-magic` theme file: replace `git_prompt_info` with `git_super_status`
* profit

#!/bin/zsh

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

setopt LOCAL_OPTIONS          # allow functions to have local options
setopt LOCAL_TRAPS            # allow functions to have local traps
setopt CLOBBER
setopt RM_STAR_SILENT         # dont ask for confirmation in rm globs
setopt CORRECT                # auto-correct commands
setopt COMPLETE_IN_WORD       # dont nice background tasks
setopt PROMPT_SUBST           # expand prompt sequences
setopt NO_HUP   # Prevent background processes being killed along with the shell

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
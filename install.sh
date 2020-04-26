#!/bin/bash
cp -r ./.ps1aw ~/.ps1aw

bashrc_file_local=~/.bashrc
if [[ ! $(cat ~/.bashrc) =~ "# prompt_awesome" ]]; then
  echo "# prompt_awesome" >> "$bashrc_file_local"
  echo "source ~/.ps1aw/ps1_constructor" >> "$bashrc_file_local"
  echo "if [[ -z \$PS1AW_GIT_INFO ]]; then" >> "$bashrc_file_local"
  echo "  export PS1AW_GIT_INFO=madt" >> "$bashrc_file_local"
  echo "fi" >> "$bashrc_file_local"
  echo "if [[ ! \$PROMPT_COMMAND =~ \"__construct_prompt_awesome\" ]]; then" >> "$bashrc_file_local"
  echo "  PROMPT_COMMAND+=\" __construct_prompt_awesome\"" >> "$bashrc_file_local"
  echo "fi" >> "$bashrc_file_local"
  echo >> "$bashrc_file_local"
fi

echo Please execute \"source ~/.bashrc\" to complete installation. Or, alternatively, restart the terminal.
unset bashrc_file_local

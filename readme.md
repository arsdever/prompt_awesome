# Prompt Awesome

This repo contains collection of awesome prompt formatting scripts.

![PromptAwesome screenshot](/readme/images/screenshot.png)

## Installation

There are 2 ways of installation [**Manual**](#manual-installation) and [**Automatic**](#automatic-installation).

### Manual installation

1. Download the repository archive
2. Unzip the content, copy the `.ps1aw` **hidden** folder into the **USERS home** directory ( aka `~` )
3. Edit the `~/.bashrc` file and append the following to it
```bash
# prompt_awesome
source ~/.ps1aw/ps1_constructor
if [[ -z $PS1AW_GIT_INFO ]]; then
  export PS1AW_GIT_INFO=madt
fi
if [[ ! $PROMPT_COMMAND =~ "__construct_prompt_awesome" ]]; then
  PROMPT_COMMAND+=" __construct_prompt_awesome"
fi
```
4. Execute `source ~/.bashrc` or restart the terminal

### Automatic installation

You can install the package also using the `install.sh` script provided in the repository. From any directory execute the following commands:

```bash
git clone https://github.com/arsdever/prompt_awesome.git
cd prompt_awesome
./install.sh
source ~/.bashrc
```

### Fonts
This styling requires fonts, which have some special characters like arrows and other stuff. I recommend installing the following ones
- [Source code pro](https://github.com/adobe-fonts/source-code-pro)
- [Hack](https://github.com/source-foundry/Hack)

## And here you go

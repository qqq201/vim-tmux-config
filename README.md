# MY simple VIM and TMUX configuration in WSL

Terminal: Windows Terminal

Font: Inconsolata NF

Shell: Fish. I use [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish) to install some packages and themes (the current theme is batman)

Have a nice theme with Tmux by [oh-my-tmux](https://github.com/pangliang/oh-my-tmux)

## Key bindings in VIM
- Ctrl t: open the NERD tree

- Ctrl [h/j/k/l]: switch between windows (also tmux panes)

- Ctrl [v/p]: switch between tabs

- //: comment a line

Other key bindings by Coc packages you can see it [here](https://github.com/neoclide/coc.nvim)


## Key bindings in TMUX
- Ctrl space as the prefix.

- Ctrl [h/j/k/l]: switch between panes

- [prefix] &: kill current window

- [prefix] x: kill current pane

- [prefix] [*left/right/up/down*]: resize current pane

- [prefix] v: create a new pane on the left

- [prefix] h: create a new pane at the bottom

**NOTE: .tmux.conf.local file only contains configurations that I've added to the end of the default in oh-my-tmux package.**

![image](https://user-images.githubusercontent.com/61228506/130060007-946d3c3e-1782-4ed3-82bc-c1aff9a68f9d.png)




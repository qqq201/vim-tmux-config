# My simple VIM and TMUX configuration in WSL

Terminal: Windows Terminal

Font: Inconsolata NF

Shell: Fish + [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)

Tmux with [oh-my-tmux](https://github.com/pangliang/oh-my-tmux)

NVM install via Oh my fish: https://riptutorial.com/node-js/example/17273/installing-with-node-version-manager-under-fish-shell-with-oh-my-fish-

## Key bindings in VIM
- Ctrl t: toggle the NERD tree

- Ctrl [h/j/k/l]: switch between windows (also tmux panes)

- Ctrl [v/p]: switch between tabs

- //: comment a line



## Key bindings in TMUX
- Ctrl space as the prefix.

- Ctrl [h/j/k/l]: switch between panes

- [prefix] &: kill current window

- [prefix] x: kill current pane

- [prefix] [*left/right/up/down*]: resize current pane

- [prefix] v: create a new pane on the left

- [prefix] h: create a new pane at the bottom

**NOTE: the uploaded .tmux.conf.local file only contains configurations that I've added to the end of the default of oh-my-tmux package.**




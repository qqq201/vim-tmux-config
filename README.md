# MY VIM - TMUX - BASH configuration on WSL2 for c/c++ and python development

Inspired by https://www.youtube.com/watch?v=CVNeOaAIjU8&t=285s

# Set up

1. Set up WSL (windows subsystem for linux - only support on windows 10) or use a VM

2. Check the version of wsl if it's 1, upgrade to wsl2 for GUI support.

3. Install Ubuntu or Kali (I use Ubuntu)

4. Install a terminal (I use Windows Terminal) and customize it

5. Login and upgrade ubuntu

6. Configure vim base on my .vimrc.
	
	 6.1 Basic configs first. Install vim plugins manager. Then install plugins and corresponding configurations except coc.nvim
  
	 6.2 Install nodejs by nvm
  
	 6.3 Install build-essential and clangd
  
	 6.4 create .bash_aliases file for storing aliases of python
  
	 6.5 Plug coc.nvim
  
	 6.6 Install coc-clangd, coc-json, coc-pyright and some other language servers by CocInstall
  
	 6.7 Check if it's working with some python and c++ files
  
	 (Optional) coc-pairs for parentheses autocomplete

7. Install XServer. Watch https://www.youtube.com/watch?v=uL8nnuvybL8. 

   export your windows ip

   add these 2 commands to your .bashrc

      export SDL_AUDIODRIVER='dsp'

      export LIBGL_ALWAYS_INDIRECT=1

8. Install Tmux and configure it, look my .tmux.conf (install tmux plugins manager)

9. Done! now you're good to go.

# Result

![image](https://user-images.githubusercontent.com/61228506/107035447-c6c8f900-67ea-11eb-8ae9-847972593eb4.png)

Remember these files are all in $HOME of our WSL not Windows. Don't edit any file in WSL by any Windows text editor

I use a theme called Dracula (https://draculatheme.com) for Windows Terminal, Tmux and also Vim.




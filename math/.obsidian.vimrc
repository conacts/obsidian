"------------------Essentials------------------------------------
set clipboard=unnamed	" Copies visual mode into mac clipboard
imap ,. <esc><esc> 		" ,. ---> esc 
nmap B ^			" Move beginning of line
nmap E $			" Move end of line
" nmap $ <nop>		" eliminate $ use
" nmap ^ <nop>		" eliminate ^ use
nmap dE d$			" delete to end of word to d+E
vmap Y "+y  			" copies with shift+y

" Sets search highlighting to cyan
hi Search ctermbg=DarkCyan 
" line number dark grey
highlight LineNr ctermfg=DarkGrey 


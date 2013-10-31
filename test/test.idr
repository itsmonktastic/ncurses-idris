module Main

import Curses

main : IO ()
main = do
	initscr
	printw "Hello, world!"
	getch
	refresh
	endwin



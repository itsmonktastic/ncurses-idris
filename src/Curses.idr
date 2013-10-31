module Curses

%link C "ncursesrun.o"
%lib C "ncurses"

public
helloCurses : IO ()
helloCurses = mkForeign(FFun "hello_curses" [] FUnit)

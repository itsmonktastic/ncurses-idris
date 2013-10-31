module Curses

%link C "ncursesrun.o"
%lib C "ncurses"

public
helloCurses : IO ()
helloCurses = mkForeign (FFun "hello_curses" [] FUnit)

public
initscr : IO ()
initscr = mkForeign (FFun "initscr" [] FUnit)

public
printw : String -> IO ()
printw s = mkForeign (FFun "printw" [FString] FUnit) s

public
refresh : IO ()
refresh = mkForeign (FFun "refresh" [] FUnit)

public
getch : IO ()
getch = mkForeign (FFun "getch" [] FUnit)

public
endwin : IO ()
endwin = mkForeign (FFun "endwin" [] FUnit)


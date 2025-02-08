# print.plt
#
# A print command shortcut designed for Unix users but should work with
# any machine which supports "|lpr" piping to the printer.  If you're not
# using a postscript printer you'll need to change the "set term" line.
#
save set "print.set"
set term postscript                   # standard postscript
# set term postscript eps enhanced    # encapsulated enhanced postscript
set output "|lpr"
replot
load "print.set"
set output
replot

## @file helloWorld.tcl
# TCL file created in order to test several features of ECLIPSE IDE:
# - Syntax Highlighting
# - Code Folding
# - Code Navigation
# - Code documentation
# - TCL Debugging
package require paqueteCarlos 1.0

## @variable toprint stores string that will be shown to the user
set toprint "Hello world"

set lista [list 1 2 4]

#imprimir $toprint

## @variable varset Variable created to test if set command can documentate as variable with TCL_SUBST
set varset 290

## @brief Hello
set varsetinc [expr $varset +1]; # Blabla blabla


set tutnum [list 5 6 7 8 9 10 11 12 13 14 15]

## Read index of element in the array to be deleted
set idx [lsearch $tutnum 10]
set tutnum [lreplace $tutnum $idx $idx]

g 2 0x150



## Launch every tutorial listed 
in the list [toupper tutnum]
#foreach tut $tutnum {
#     set cmd [subst tutorial$tut]
#     puts "Launch function [string toupper $cmd]: #########################"
#     $cmd ;# Functions tutorial5 , tutorial6, etc...
#}




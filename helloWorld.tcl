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
imprimir $toprint
## @variable varset Variable created to test if set command cand documentate as variable with TCL_SUBST
set varset 290
## @brief Hello
set varsetinc [exp $varset+1];  ;# @brief Blabla blabla
## @file helloWorld.tcl
package provide paqueteCarlos 1.0


#-------------info--------------------
## Function created to print data
# @param dato Usually an string between ""
# @return None
#-------------------------------------
proc imprimir {dato} {
	puts "Dato= $dato"
}

#-------------info--------------------
## TCL TK TURORIAL SECTION 3: Simple Text Ouput
# A single unit of text after the puts command will be printed to the standard output device.
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl1.html
#-------------------------------------
proc tutorial3 {dato} {
	puts "Dato= $dato"
	puts HelloWorld ; # Words don't need to be quoted unless they contain white space.
	# single quotes are not significant
}

#-------------info--------------------
## TCL TK TURORIAL SECTION 4: Assigning values to variables
# In Tcl, everything may be represented as a string, although internally it 
#  may be represented as a list, integer, double, or other type, in order to make the language fast.
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl2.html
#-------------------------------------
proc tutorial4 {dato} {
	# set varName ?value?
	set newVar "$dato  End" ; # Set always returns the contents of the variable named in the first argument
	puts "Dato= $newVar"
	puts HelloWorld ; # Words don't need to be quoted unless they contain white space.
	# single quotes are not significant
}

#-------------info--------------------
## TCL TK TURORIAL SECTION 5: Grouping arguments with ""
# First way Tcl handling substitution during command evaluation.
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl3.html
#-------------------------------------
proc tutorial5 {} {
	set Z_LABEL "The Capitol of New York is: "
	puts "$Z_LABEL \$Z"  ;# Prints a literal $Z instead of the value of Z

}

#-------------info--------------------
## TCL TK TURORIAL SECTION 6:Grouping arguments with {}	
# Second way Tcl handling substitution during command evaluation.
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl4.html
#-------------------------------------
proc tutorial6 {} {
	set Z Albany
	set Z_LABEL "The Capitol of New York is: "
	puts "\n................. examples of differences between  \" and \{"
	puts "$Z_LABEL $Z"
	puts {$Z_LABEL $Z}
	
	puts "\n....... examples of differences in nesting \{ and \" "
	puts "$Z_LABEL {$Z}"
	puts {Who said, "What this country needs is a good $0.05 cigar!"?}
	
	puts "\n................. examples of escape strings"
	puts {There are no substitutions done within braces \n \r \x0a \f \v}
	puts {But, the escaped newline at the end of a\
	string is still evaluated as a space}
}

#-------------info--------------------
## TCL TK TURORIAL SECTION 7:Grouping arguments with []
# Third  way Tcl handling substitution during command evaluation.
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl5.html
#-------------------------------------
proc tutorial7 {} {
	set x abc
	puts "A simple substitution: $x\n"
	
	set y [set x "def"]
	puts "Remember that set returns the new value of the variable: X: $x Y: $y\n"
	
	set z {[set x "This is a string within quotes within braces"]}
	puts "Note the curly braces: $z\n"
	
	set a "[set x {This is a string within braces within quotes}]"
	puts "See how the set is executed: $a"
	puts "\$x is: $x\n"
	
	set b "\[set y {This is a string within braces within quotes}]"
	# Note the \ escapes the bracket, and must be doubled to be a
	# literal character in double quotes
	puts "Note the \\ escapes the bracket:\n \$b is: $b"
	puts "\$y is: $y"
}

#--------------info--------------------
## TCL TK TURORIAL SECTION 8:Results of a command - Math 101
#  Results of a command - Math 101
#  https://www.tcl.tk/man/tcl8.5/tutorial/Tcl6.html
#-------------------------------------
proc tutorial8 {} {
	set X 100
	set Y 256
	set Z [expr {$Y + $X}]
	set Z_LABEL "$Y plus $X is "
	
	puts "$Z_LABEL $Z"
	puts "The square root of $Y is [expr { sqrt($Y) }]\n"
	
	puts "Because of the precedence rules \"5 + -3 * 4\"   is: [expr {-3 * 4 + 5}]"
	puts "Because of the parentheses      \"(5 + -3) * 4\" is: [expr {(5 + -3) * 4}]"
	
	set A 3
	set B 4
	puts "The hypotenuse of a triangle: [expr {hypot($A,$B)}]"
	
	#
	# The trigonometric functions work with radians ...
	#
	set pi6 [expr {3.1415926/6.0}]
	puts "The sine and cosine of pi/6: [expr {sin($pi6)}] [expr {cos($pi6)}]"
	
	#
	# Working with arrays
	#
	set a(1) 10
	set a(2) 7
	set a(3) 17
	set b    2
	puts "Sum: [expr {$a(1)+$a($b)}]"

}

#-------------info--------------------
## TCL TK TURORIAL SECTION 9:Computers and numbers
#  Computers and numbers
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl6a.html
#-------------------------------------
proc tutorial9 {} {
	# Compute 1 million times 1 million
	puts [expr {1000000*1000000}] ;#Not working as expected
}

#-------------info--------------------
## TCL TK TURORIAL SECTION 10:  Numeric Comparisons 101 - if
#  Numeric Comparisons 101 - if
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl7.html
#-------------------------------------
proc tutorial10 {} {
	set x 1
	
	if {$x == 2} {puts "$x is 2"} else {puts "$x is not 2"}
	
	if {$x != 1} {
	    puts "$x is != 1"
	} else {
	    puts "$x is 1"
	}
	
	if $x==1 {puts "GOT 1"}
	
	#
	# Be careful, this is just an example
	# Usually you should avoid such constructs,
	# it is less than clear what is going on and it can be dangerous
	#
	set y x
	if "$$y != 1" {
	    puts "$$y is != 1"
	} else {
	    puts "$$y is 1"
	}
	
	#
	# A dangerous example: due to the extra round of substitution,
	# the script stops
	#
	set y {[exit]}
	if "$$y != 1" {
	    puts "$$y is != 1"
	} else {
	    puts "$$y is 1"
	}

}

#-------------info--------------------
## TCL TK TURORIAL SECTION 11:  Textual Comparison - switch
#  Textual Comparison - switch
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl8.html
#-------------------------------------
proc tutorial11 {} {
	set x "ONE"
	set y 1
	set z ONE
	
	# This is probably the easiest and cleanest form of the command
	# to remember:
	switch $x {
	    "$z" {
		set y1 [expr {$y+1}]
		puts "MATCH \$z. $y + $z is $y1"
	    }
	    ONE {
		set y1 [expr {$y+1}]
		puts "MATCH ONE. $y + one is $y1"
	    }
	    TWO {
		set y1 [expr {$y+2}]
		puts "MATCH TWO. $y + two is $y1"
	    }
	    THREE {
		set y1 [expr {$y+3}]
		puts "MATCH THREE. $y + three is $y1"
	    }
	    default {
		puts "$x is NOT A MATCH"
	    }
	}
	
	
	switch $x "$z" {
	    set y1 [expr {$y+1}]
	    puts "MATCH \$z. $y + $z is $y1"
	} ONE {
	    set y1 [expr {$y+1}]
	    puts "MATCH ONE. $y + one is $y1"
	} TWO {
	    set y1 [expr {$y+2}]
	    puts "MATCH TWO. $y + two is $y1"
	} THREE {
	    set y1 [expr {$y+3}]
	    puts "MATCH THREE. $y + three is $y1"
	} default {
	    puts "$x does not match any of these choices"
	}
	
	
	switch $x "ONE" "puts ONE=1" "TWO" "puts TWO=2" "default" "puts NO_MATCH"
	
	switch $x \
	"ONE"     "puts ONE=1"  \
	"TWO"     "puts TWO=2" \
	"default"     "puts NO_MATCH";
	    

}

#-------------info--------------------
## TCL TK TURORIAL SECTION 12:  Looping 101 - While loop
#  Looping 101 - While loop
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl9.html
#-------------------------------------
proc tutorial12 {} {
    set x 1
    
    # This is a normal way to write a Tcl while loop.
    
    while {$x < 5} {
	puts "x is $x"
	set x [expr {$x + 1}]
    }
    
    puts "exited first loop with X equal to $x\n"
    
    # The next example shows the difference between ".." and {...}
    # How many times does the following loop run?  Why does it not
    # print on each pass?
    
    set x 0
    while "$x < 5" {
	set x [expr {$x + 1}]
	if {$x > 7} break ;#A break within body will break out of the while loop, and execution will continue with the next line of code after body.
	    	           #If it weren't for the break, it would loop forever.
	if "$x > 3" continue ;#A continue statement within body will stop the execution of the code and the test will be re-evaluated
	puts "x is $x"
    }
    
    puts "exited second loop with X equal to $x"
}

#-------------info--------------------
## TCL TK TURORIAL SECTION 13:  Looping 102 - For and incr
#  Looping 102 - For and incr
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl10.html
#-------------------------------------
proc tutorial13 {} {
    for {set i 0} {$i < 10} {incr i} {
	puts "I inside first loop: $i"
    }
    
    for {set i 3} {$i < 2} {incr i} {
	puts "I inside second loop: $i"
    }
    
    puts "Start"
    set i 0
    while {$i < 10} {
	puts "I inside third loop: $i"
	incr i
	puts "I after incr: $i"
    }
    
    set i 0
    incr i ;#his command adds the value in the second argument to the variable named in the first argument. If no value is given for the second argument, it defaults to 1.
    # This is equivalent to:
    set i [expr {$i + 1}]
}

#-------------info--------------------
## TCL TK TURORIAL SECTION 14:  Adding new commands to Tcl - proc
#  Adding new commands to Tcl - proc
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl11.html
#-------------------------------------
proc tutorial14 {} {
    proc sum {arg1 arg2} {
	set x [expr {$arg1 + $arg2}];
	return $x
    }
    
    puts " The sum of 2 + 3 is: [sum 2 3]\n\n"
    
    proc for {a b c} {
	puts "The for command has been replaced by a puts";
	puts "The arguments were: $a\n$b\n$c\n"
    }
    
    for {set i 1} {$i < 10} {incr i}
}

#-------------info--------------------
## TCL TK TURORIAL SECTION 15: Variations in proc arguments and return values
# Variations in proc arguments and return values
# https://www.tcl.tk/man/tcl8.5/tutorial/Tcl12.html
#-------------------------------------
proc tutorial15 {} {
    #Variables can be defined with a default value by placing the variable \
    name and the default within braces within args
    proc example {first {second ""} args} { ;#A proc will accept a variable number of arguments if the last declared argument is the word args
	if {$second eq ""} {
	    puts "There is only one argument and it is: $first"
	    return 1
	} else {
	    if {$args eq ""} {
		puts "There are two arguments - $first and $second"
		return 2
	    } else {
		puts "There are many arguments - $first and $second and $args"
		return "many"
	    }
	}
    }
    
    set count1 [example ONE]
    set count2 [example ONE TWO]
    set count3 [example ONE TWO THREE ]
    set count4 [example ONE TWO THREE FOUR]
    
    puts "The example was called with $count1, $count2, $count3, and $count4 Arguments"
}

#-------------info--------------------
## @brief Calculates the formula for the Beam Current Controller in the RFG Module
# @param gk Which of the three constant do we want (g1, g2, g3)
# @param val Which parameter needs to be multiply by the constant
# @return Value of the calculations
#-------------------------------------
proc g {gk val} {
	puts "[ expr $val*1 ]"
	if { $gk == 1 } { set constantes [list 2 1/4 1/8] } \
	elseif { $gk == 2 } { set constantes [list -(1/64) -1/2 1/64] }
	set ret 0
	foreach op $constantes {
		if { $op < 0 } { 
			puts "Negative"
			puts "op a= $op"
			set  op [expr $op]
			puts "op b= $op"
			puts "val= $val"
			puts "ret= $ret"
			set ret [expr $ret-$op*$val]
			puts "$ret"} \
		elseif { $op > 0 } {
			puts "Positive"
			puts "op= $op"
			puts "val= $val"
			puts "ret= $ret"
			puts [expr $val*$op]
			set ret [expr $val*$op] 
			puts "$ret"
		}
		puts "--> $ret"
	}
	puts "$ret"
}
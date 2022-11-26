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
#
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
#
#-------------------------------------
proc tutorial5 {} {
	set Z_LABEL "The Capitol of New York is: "
	puts "$Z_LABEL \$Z"  ;# Prints a literal $Z instead of the value of Z

}

#-------------info--------------------
## TCL TK TURORIAL SECTION 6:Grouping arguments with {}	
# Second way Tcl handling substitution during command evaluation.
#
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
#
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

#---+----------info--------------------
## TCL TK TURORIAL SECTION 8:Results of a command - Math 101
#  Results of a command - Math 101
#
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
#
#-------------------------------------
proc tutorial9 {} {
	# Compute 1 million times 1 million
	puts [expr {1000000*1000000}] ;#Not working as expected
}

#-------------info--------------------
## TCL TK TURORIAL SECTION 10:  Numeric Comparisons 101 - if
#  Numeric Comparisons 101 - if
#
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

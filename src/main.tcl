#!/usr/bin/tclsh

# Packages
package require Tk
package require sqlite3
#sources
source "ui/sections.tcl"
source "ui/menubar.tcl"
source "actions/advance.tcl"

proc main { } {
	menuBar

	frame .main -bd 2 -relief groove
	grid config .main -column 0 -row 1 -columnspan 1 -rowspan 1 -sticky "snew"

	frame .main.left -bd 2 -relief groove
	label .main.left.section1 -text "Payment Details >"
	label .main.left.section2 -text "Student Details >"
	label .main.left.section3 -text "Mental Benefits >"
	label .main.left.section4 -text "Pre-Interview >"
	label .main.left.section5 -text "Medical Problems >"
	label .main.left.section6 -text "Interview >"
	pack .main.left.section1 -padx 20 -pady 10
	pack .main.left.section2 -padx 20 -pady 10
	pack .main.left.section3 -padx 20 -pady 10
	pack .main.left.section4 -padx 20 -pady 10
	pack .main.left.section5 -padx 20 -pady 10
	pack .main.left.section6 -padx 20 -pady 10
	grid config .main.left -column 0 -row 1 -columnspan 1 -rowspan 1 -sticky "snew"

	frame .main.right -bd 2 -relief flat
	sqlite3 MAMDB ./db/MAMDB
	buildFrontScreen
}

main

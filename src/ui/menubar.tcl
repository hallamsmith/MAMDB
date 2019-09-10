proc menuBar { } {
	frame .menubar -bd 2 -relief raised
	menubutton .menubar.file -underline 0 -text "File" -menu .menubar.file.menu
	menu .menubar.file.menu
	.menubar.file.menu add command -label "Exit" -underline 1 -command { exit }
	pack .menubar.file -side left
	grid config .menubar -column 0 -row 0 -columnspan 1 -rowspan 1 -sticky "snew"
}

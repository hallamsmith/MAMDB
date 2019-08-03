#!/usr/bin/tclsh

# Packages
package require Tk
#Functions
proc buildSection1 { } {
	.main.left.section1 configure -foreground green 
	label .main.right.studentNameLbl -text "Student Name: "
	label .main.right.studentDOBLbl -text "Date of Birth: "
	label .main.right.studentMotherNameLbl -text "Mother (Guardian): "
	label .main.right.studentMotherOccupationLbl -text "Occupation: "
	label .main.right.studentFatherNameLbl -text "Father (Guardian): "
	label .main.right.studentFatherOccupationLbl -text "Occupation: "
	label .main.right.studentContactHomeLbl -text "Home #: "
	label .main.right.studentContactMobileLbl -text "Mobile #: "
	label .main.right.studentContactEmailLbl -text "Email: "
	label .main.right.studentAddressLbl -text "Address: "
	label .main.right.studentPostcodeLbl -text "Post Code: "
	entry .main.right.studentNameEnt
	entry .main.right.studentDOBEnt
	entry .main.right.studentMotherNameEnt
	entry .main.right.studentMotherOccupationEnt
	entry .main.right.studentFatherNameEnt
	entry .main.right.studentFatherOccupationEnt
	entry .main.right.studentContactHomeEnt
	entry .main.right.studentContactMobileEnt
	entry .main.right.studentContactEmailEnt
	entry .main.right.studentAddressEnt1
	entry .main.right.studentAddressEnt2
	entry .main.right.studentAddressEnt3
	entry .main.right.studentAddressEnt4
	entry .main.right.studentPostcodeEnt
	button .main.right.submit -text "Submit" -command submitSection1
	grid config .main.right -column 1 -row 1 -columnspan 1 -rowspan 1 -sticky "snew"
	grid rowconfigure .main.right 0 -pad 20
	grid rowconfigure .main.right 3 -pad 20
	grid columnconfigure .main.right 0 -pad 20
	grid columnconfigure .main.right 2 -pad 20
	grid config .main.right.studentNameLbl -column 0 -row 0 -sticky "e"
	grid config .main.right.studentNameEnt -column 1 -row 0
	grid config .main.right.studentDOBLbl -column 2 -row 0 -sticky "e"
	grid config .main.right.studentDOBEnt -column 3 -row 0
	grid config .main.right.studentMotherNameLbl -column 0 -row 1 -sticky "e"
	grid config .main.right.studentMotherNameEnt -column 1 -row 1
	grid config .main.right.studentMotherOccupationLbl -column 2 -row 1 -sticky "e"
	grid config .main.right.studentMotherOccupationEnt -column 3 -row 1
	grid config .main.right.studentFatherNameLbl -column 0 -row 2 -sticky "e"
	grid config .main.right.studentFatherNameEnt -column 1 -row 2
	grid config .main.right.studentFatherOccupationLbl -column 2 -row 2 -sticky "e"
	grid config .main.right.studentFatherOccupationEnt -column 3 -row 2
	grid config .main.right.studentContactHomeLbl -column 0 -row 3 -sticky "e"
	grid config .main.right.studentContactHomeEnt -column 1 -row 3
	grid config .main.right.studentContactMobileLbl -column 2 -row 3 -sticky "e"
	grid config .main.right.studentContactMobileEnt -column 3 -row 3
	grid config .main.right.studentAddressLbl -column 0 -row 4 -sticky "e"
	grid config .main.right.studentAddressEnt1 -column 1 -row 4
	grid config .main.right.studentContactEmailLbl -column 2 -row 4 -sticky "e"
	grid config .main.right.studentContactEmailEnt -column 3 -row 4
	grid config .main.right.studentAddressEnt2 -column 1 -row 5
	grid config .main.right.studentPostcodeLbl -column 2 -row 5 -sticky "e"
	grid config .main.right.studentPostcodeEnt -column 3 -row 5
	grid config .main.right.studentAddressEnt3 -column 1 -row 6
	grid config .main.right.studentAddressEnt4 -column 1 -row 7
	grid config .main.right.submit -column 3 -row 7
}

proc buildSection2 { } {
	.main.left.section2 configure -foreground green
	label .main.right.mentalBenefitsLbl -text "Mental Benefits"
	checkbutton .main.right.focus -variable focus -text "Focus"
	checkbutton .main.right.alertness -variable alertness -text "Alertness"
	checkbutton .main.right.discipline -variable discipline -text "Discipline"
	checkbutton .main.right.motivation -variable motivation -text "Motivation"
	checkbutton .main.right.obediance -variable obediance -text "Obediance"
	checkbutton .main.right.selfControl -variable selfControl -text "Selft Control"
	checkbutton .main.right.selfEsteem -variable selfEsteem -text "Self Esteem"
	checkbutton .main.right.selfRespect -variable selfRespect -text "Self Respect"
	checkbutton .main.right.betterGrades -variable betterGrades -text "Better Grades"
	checkbutton .main.right.concentration -variable concentration -text "Concentration"
	checkbutton .main.right.achieveGoals -variable achieveGoals -text "Achieve Goals"
	checkbutton .main.right.manageStress -variable manageStress -text "Manage Stress"
	checkbutton .main.right.selfConfidence -variable selfConfidence -text "Self Confidence"
	checkbutton .main.right.respectForOthers -variable respectForOthers -text "Respect for Others"
	label .main.right.healthBenefitsLbl -text "Health Benefits"
	checkbutton .main.right.cardiovascular -variable cardiovascular -text "Cardiovascular"
	checkbutton .main.right.muscleEndurance -variable muscleEndurance -text "Muscle Endurance"
	checkbutton .main.right.muscularStrength -variable muscularStrength -text "Muscular Strength"
	checkbutton .main.right.bodyComposition -variable bodyCompostion -text "Body Compostion"
	label .main.right.skillBenefitsLbl -text "Skill Benefits"
	checkbutton .main.right.agility -variable agility -text "Agility"
	checkbutton .main.right.power -variable power -text "Power"
	checkbutton .main.right.speed -variable speed -text "Speed"
	checkbutton .main.right.balance -variable balance -text "Balance"
	checkbutton .main.right.coordination -variable coordination -text "Coordination"
	checkbutton .main.right.reactionTime -variable reactionTime -text "Reation Time"
	label .main.right.physicalBenefitsLbl -text "Physical Benefits"
	checkbutton .main.right.mobilitty -variable mobility -text "Mobility"
	checkbutton .main.right.exercise -variable exercise -text "Exercise"
	checkbutton .main.right.flexibility -variable flexibility -text "Flexibility"
	checkbutton .main.right.relaxation -variable relexation -text "Relextion"
	checkbutton .main.right.endurance -variable endurance -text "Endurance"
	checkbutton .main.right.muscleTone -variable muscleTone -text "Muscle Tone"
	checkbutton .main.right.contitioning -variable conditioning -text "Conditioning"
	checkbutton .main.right.rapidReeflexes -variable rapidReflexes -text "Rapid Reflexes"
	checkbutton .main.right.weightControl -variable weightControl -text "Weight Control"
	checkbutton .main.right.physicalBenefits -variable physicalBenefits -text "Physical Benefits"
	checkbutton .main.right.breathingControl -variable breathingControl -text "Breathing Control"
	checkbutton .main.right.practicalDefenseSkills -variable practicalDefenseSkills -text "Practical Defense Skills"
	grid config .main.right.mentalBenefitsLbl -column 0 -row 0 -sticky "w"
	grid config .main.right.focus -column 0 -row 1 -sticky "w"
	grid config .main.right.alertness -column 1 -row 1 -sticky "w" 
	grid config .main.right.discipline -column 2 -row 1 -sticky "w"
	grid config .main.right.motivation -column 3 -row 1 -sticky "w"
	grid config .main.right.obediance -column 0 -row 2 -sticky "w"
	grid config .main.right.selfControl -column 1 -row 2 -sticky "w"
	grid config .main.right.selfEsteem -column 2 -row 2 -sticky "w"
	grid config .main.right.selfRespect -column 3 -row 2 -sticky "w"
	grid config .main.right.betterGrades -column 0 -row 3 -sticky "w"
	grid config .main.right.concentration -column 1 -row 3 -sticky "w"
	grid config .main.right.achieveGoals -column 2 -row 3 -sticky "w"
	grid config .main.right.manageStress -column 3 -row 3 -sticky "w"
	grid config .main.right.selfConfidence -column 1 -row 4 -sticky "w"
	grid config .main.right.respectForOthers -column 2 -row 4 -sticky "w"
	grid config .main.right.healthBenefitsLbl -column 0 -row 5 -sticky "w"
	grid config .main.right.cardiovascular -column 0 -row 6 -sticky "w"
	grid config .main.right.muscleEndurance -column 1 -row 6 -sticky "w"
	grid config .main.right.muscularStrength -column 2 -row 6 -sticky "w"
	grid config .main.right.bodyComposition -column 3 -row 6 -sticky "w"
	grid config .main.right.skillBenefitsLbl -column 0 -row 7 -sticky "w"
	grid config .main.right.agility -column 0 -row 8 -sticky "w"
	grid config .main.right.power -column 1 -row 8 -sticky "w"
	grid config .main.right.speed -column 2 -row 8 -sticky "w"
	grid config .main.right.balance -column 3 -row 8 -sticky "w"
	grid config .main.right.coordination -column 1 -row 9 -sticky "w"
	grid config .main.right.reactionTime -column 2 -row 9 -sticky "w"
	grid config .main.right.physicalBenefitsLbl -column 0 -row 10 -sticky "w"
	grid config .main.right.mobilitty -column 0 -row 11 -sticky "w"
	grid config .main.right.exercise -column 1 -row 11 -sticky "w"
	grid config .main.right.flexibility  -column 2 -row 11 -sticky "w"
	grid config .main.right.relaxation  -column 3 -row 11 -sticky "w"
	grid config .main.right.endurance  -column 0 -row 12 -sticky "w"
	grid config .main.right.muscleTone -column 1 -row 12 -sticky "w"
	grid config .main.right.contitioning -column 2 -row 12 -sticky "w"
	grid config .main.right.rapidReeflexes -column 3 -row 12 -sticky "w"
	grid config .main.right.weightControl -column 0 -row 13 -sticky "w"
	grid config .main.right.physicalBenefits  -column 1 -row 13 -sticky "w"
	grid config .main.right.breathingControl -column 2 -row 13 -sticky "w"
	grid config .main.right.practicalDefenseSkills -column 3 -row 13 -sticky "w"
}

proc submitSection1 { } {
	puts "Submit Triggered"
	set name [.main.right.studentNameEnt get]
	set dob [.main.right.studentDOBEnt get]
	set mother [.main.right.studentMotherNameEnt get]
	set motherocc [.main.right.studentMotherOccupationEnt get]
	set father [.main.right.studentFatherNameEnt get]
	set fatherocc [.main.right.studentFatherOccupationEnt get]
	set homenum [.main.right.studentContactHomeEnt get]
	set mobilenum [.main.right.studentContactMobileEnt get]
	set email [.main.right.studentContactEmailEnt get]
	set address1 [.main.right.studentAddressEnt1 get]
	set address2 [.main.right.studentAddressEnt2 get]
	set address3 [.main.right.studentAddressEnt3 get]
	set address4 [.main.right.studentAddressEnt4 get]
	set postcode [.main.right.studentPostcodeEnt get]
	puts "Name: $name"
	puts "DOB: $dob"
	puts "Mother $mother"
	puts "Mother Occ: $motherocc"
	puts "Father: $father"
	puts "Father Occ: $fatherocc"
	puts "Home Num $homenum"
	puts "Mobile Num $mobilenum"
	puts "Email: $email"
	puts "Address1: $address1"
	puts "Address2: $address2"
	puts "Address3: $address3"
	puts "Address4: $address4"
	puts "Postcode: $postcode"
	if {![catch {open student.csv a} db]} {
		puts $db "$name,$dob,$mother,$motherocc,$father,$fatherocc,$homenum,$mobilenum,$email,$address1,$address2,$address3,$address4,$postcode"
		close $db
	}
	grid forget .main.right.studentNameLbl
	grid forget .main.right.studentNameEnt
	grid forget .main.right.studentDOBLbl
	grid forget .main.right.studentDOBEnt
	grid forget .main.right.studentMotherNameLbl 
	grid forget .main.right.studentMotherNameEnt 
	grid forget .main.right.studentMotherOccupationLbl 
	grid forget .main.right.studentMotherOccupationEnt
	grid forget .main.right.studentFatherNameLbl 
	grid forget .main.right.studentFatherNameEnt
	grid forget .main.right.studentFatherOccupationLbl
	grid forget .main.right.studentFatherOccupationEnt
	grid forget .main.right.studentContactHomeLbl 
	grid forget .main.right.studentContactHomeEnt
	grid forget .main.right.studentContactMobileLbl 
	grid forget .main.right.studentContactMobileEnt
	grid forget .main.right.studentAddressLbl 
	grid forget .main.right.studentAddressEnt1
	grid forget .main.right.studentContactEmailLbl 
	grid forget .main.right.studentContactEmailEnt
	grid forget .main.right.studentAddressEnt2
	grid forget .main.right.studentPostcodeLbl
	grid forget .main.right.studentPostcodeEnt
	grid forget .main.right.studentAddressEnt3 
	grid forget .main.right.studentAddressEnt4
	grid forget .main.right.submit
	.main.left.section1 configure -foreground black
	buildSection2

}


# Menu
frame .menubar -bd 2 -relief raised
menubutton .menubar.file -underline 0 -text "File" -menu .menubar.file.menu
menu .menubar.file.menu
.menubar.file.menu add command -label "Exit" -underline 1 -command { exit }
pack .menubar.file -side left
grid config .menubar -column 0 -row 0 -columnspan 1 -rowspan 1 -sticky "snew"

#Main
frame .main -bd 2 -relief groove
grid config .main -column 0 -row 1 -columnspan 1 -rowspan 1 -sticky "snew"
#Left
frame .main.left -bd 2 -relief groove
label .main.left.section1 -text "Section 1 >"
label .main.left.section2 -text "Section 2 >"
label .main.left.section3 -text "Section 3 >"
label .main.left.section4 -text "Section 4 >"
label .main.left.section5 -text "Section 5 >"
label .main.left.section6 -text "Section 6 >"
pack .main.left.section1 -padx 20 -pady 10
pack .main.left.section2 -padx 20 -pady 10
pack .main.left.section3 -padx 20 -pady 10
pack .main.left.section4 -padx 20 -pady 10
pack .main.left.section5 -padx 20 -pady 10
pack .main.left.section6 -padx 20 -pady 10
grid config .main.left -column 0 -row 1 -columnspan 1 -rowspan 1 -sticky "snew"
#Right
frame .main.right -bd 2 -relief flat
buildSection1


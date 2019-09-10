source "actions/new.tcl"
proc buildFrontScreen { } {
	label .main.right.mamDBTitle -text "MAMDB"
	entry .main.right.searchBox
	ttk::combobox .main.right.searchWhat -values [list "Student" "Payment" "Parent"]
	button .main.right.go -text "go" -command searchSPP
	label .main.right.newLbl -text "New"
	label .main.right.deleteLbl -text "Delete"
	label .main.right.printLbl -text "Print"
	button .main.right.newStudentPayment -text "Student & Payment" -command newStudentPayment
	button .main.right.newStudent -text "Student" -command newStudent
	button .main.right.newPayment -text "Payment" -command newPayment
	button .main.right.deleteStudentPayment -text "Student & Payment" -command deleteStudentPayment
	button .main.right.deleteStudent -text "Student" -command deleteStudent
	button .main.right.deletePayment -text "Payment" -command deletePayment
	button .main.right.printRegister -text "Register" -command printRegister
	button .main.right.printInterviewForm -text "Interview Form" -command printInterviewForm

	grid config .main.right -column 1 -row 1 -columnspan 1 -rowspan 1 -sticky "snew"
	grid config .main.right.mamDBTitle -column 1 -row 0 -sticky "w"
	grid config .main.right.searchBox -column 0 -row 1 -sticky "e"
	grid config .main.right.searchWhat -column 1 -row 1
	grid config .main.right.go -column 2 -row 1 -sticky "w"
	grid config .main.right.newLbl -column 0 -row 2
	grid config .main.right.deleteLbl -column 1 -row 2
	grid config .main.right.printLbl -column 2 -row 2
	grid config .main.right.newStudentPayment -column 0 -row 3 -sticky "w"
	grid config .main.right.deleteStudentPayment -column 1 -row 3 -sticky "w"
	grid config .main.right.printRegister -column 2 -row 3 -sticky "w"
	grid config .main.right.newStudent -column 0 -row 4 -sticky "w"
	grid config .main.right.deleteStudent -column 1 -row 4 -sticky "w"
	grid config .main.right.printInterviewForm -column 2 -row 4 -sticky "w"
	grid config .main.right.newPayment -column 0 -row 5 -sticky "w"
	grid config .main.right.deletePayment -column 1 -row 5 -sticky "w"

}
proc buildSection1 { studentID paymentID } {
	label .main.right.serviceContract -text "Service Contract"
	label .main.right.scSurnameLbl -text "Surname:"
	entry .main.right.scSurnameEnt
	label .main.right.scFirstnameLbl -text "First Name:"
	entry .main.right.scFirstnameEnt
	label .main.right.scTitleLbl -text "Title:"
	entry .main.right.scTitleEnt
	label .main.right.scDOBLbl -text "Date of Birth:"
	entry .main.right.scDOBEnt
	label .main.right.scAddressLbl -text "Address:"
	entry .main.right.scAddress1Ent
	entry .main.right.scAddress2Ent
	entry .main.right.scAddress3Ent
	entry .main.right.scAddress4Ent
	label .main.right.scPostcodeLbl -text "Postcode:"
	entry .main.right.scPostcodeEnt
	label .main.right.scHomePhoneLbl -text "Home Telephone:"
	entry .main.right.scHomePhoneEnt
	label .main.right.scMobilePhoneLbl -text "Mobile Telephone:"
	entry .main.right.scMobilePhoneEnt
	label .main.right.scWorkPhoneLbl -text "Work Telephone:"
	entry .main.right.scWorkPhoneEnt
	label .main.right.scEmailLbl -text "Email:"
	entry .main.right.scEmailEnt
	label .main.right.scMembershipNumLbl -text "Membership Number:"
	entry .main.right.scMembershipNumEnt
	button .main.right.advance1 -text "NEXT" -command [list advance1 $studentID $paymentID]
	button .main.right.cancel1 -text "CANCEL" -command cancel1

	grid config .main.right.serviceContract -column 0 -row 0 -columnspan 4 -sticky "w"
	grid config .main.right.scSurnameLbl -column 0 -row 1 -sticky "e"
	grid config .main.right.scSurnameEnt -column 1 -row 1 -sticky "w"
	grid config .main.right.scFirstnameLbl -column 2 -row 1 -sticky "e"
	grid config .main.right.scFirstnameEnt -column 3 -row 1 -sticky "w"
	grid config .main.right.scTitleLbl -column 0 -row 2 -sticky "e"
	grid config .main.right.scTitleEnt -column 1 -row 2 -sticky "w"
	grid config .main.right.scDOBLbl -column 2 -row 2 -sticky "e"
	grid config .main.right.scDOBEnt -column 3 -row 2 -sticky "w"
	grid config .main.right.scAddressLbl -column 0 -row 3 -sticky "e"
	grid config .main.right.scAddress1Ent -column 1 -row 3 -sticky "w"
	grid config .main.right.scAddress2Ent -column 1 -row 4 -sticky "w"
	grid config .main.right.scAddress3Ent -column 1 -row 5 -sticky "w"
	grid config .main.right.scAddress4Ent -column 1 -row 6 -sticky "w"
	grid config .main.right.scPostcodeLbl -column 2 -row 3 -sticky "e"
	grid config .main.right.scPostcodeEnt -column 3 -row 3 -sticky "w"
	grid config .main.right.scHomePhoneLbl -column 2 -row 4 -sticky "e"
	grid config .main.right.scHomePhoneEnt -column 3 -row 4 -sticky "w"
	grid config .main.right.scMobilePhoneLbl -column 2 -row 5 -sticky "e"
	grid config .main.right.scMobilePhoneEnt -column 3 -row 5 -sticky "w"
	grid config .main.right.scWorkPhoneLbl -column 2 -row 6 -sticky "e"
	grid config .main.right.scWorkPhoneEnt -column 3 -row 6 -sticky "w"
	grid config .main.right.scEmailLbl -column 0 -row 7 -sticky "e"
	grid config .main.right.scEmailEnt -column 1 -row 7 -sticky "w"
	grid config .main.right.scMembershipNumLbl -column 2 -row 7 -sticky "e"
	grid config .main.right.scMembershipNumEnt -column 3 -row 7 -sticky "w"
	grid config .main.right.advance1 -column 3 -row 8 -sticky "w"
	grid config .main.right.cancel1 -column 2 -row 8 -sticky "e"
	.main.left.section1 configure -foreground green
}
proc buildSection2 { studentID paymentID } {
	.main.left.section2 configure -foreground green 
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
	button .main.right.advance2 -text "NEXT" -command [list advance2 $studentID $paymentID]
	button .main.right.retreat2 -text "PREV" -command [list retreat2]
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
	grid config .main.right.advance2 -column 3 -row 7 -sticky "w"
	grid config .main.right.retreat2 -column 2 -row 7 -sticky "e"
}

proc buildSection3 { studentID } {
	.main.left.section3 configure -foreground green
	label .main.right.mentalBenefitsLbl -text "Mental Benefits"
	checkbutton .main.right.focus -text "Focus"
	checkbutton .main.right.alertness -text "Alertness"
	checkbutton .main.right.discipline -text "Discipline"
	checkbutton .main.right.motivation -text "Motivation"
	checkbutton .main.right.obediance -text "Obediance"
	checkbutton .main.right.selfControl -text "Selft Control"
	checkbutton .main.right.selfEsteem -text "Self Esteem"
	checkbutton .main.right.selfRespect -text "Self Respect"
	checkbutton .main.right.betterGrades -text "Better Grades"
	checkbutton .main.right.concentration -text "Concentration"
	checkbutton .main.right.achieveGoals -text "Achieve Goals"
	checkbutton .main.right.manageStress -text "Manage Stress"
	checkbutton .main.right.selfConfidence -text "Self Confidence"
	checkbutton .main.right.respectForOthers -text "Respect for Others"
	label .main.right.healthBenefitsLbl -text "Health Benefits"
	checkbutton .main.right.cardiovascular -text "Cardiovascular"
	checkbutton .main.right.muscleEndurance -text "Muscle Endurance"
	checkbutton .main.right.muscularStrength -text "Muscular Strength"
	checkbutton .main.right.bodyComposition -text "Body Compostion"
	label .main.right.skillBenefitsLbl -text "Skill Benefits"
	checkbutton .main.right.agility -text "Agility"
	checkbutton .main.right.power -text "Power"
	checkbutton .main.right.speed -text "Speed"
	checkbutton .main.right.balance -text "Balance"
	checkbutton .main.right.coordination -text "Coordination"
	checkbutton .main.right.reactionTime -text "Reation Time"
	label .main.right.physicalBenefitsLbl -text "Physical Benefits"
	checkbutton .main.right.mobilitty -text "Mobility"
	checkbutton .main.right.exercise -text "Exercise"
	checkbutton .main.right.flexibility -text "Flexibility"
	checkbutton .main.right.relaxation -text "Relextion"
	checkbutton .main.right.endurance -text "Endurance"
	checkbutton .main.right.muscleTone -text "Muscle Tone"
	checkbutton .main.right.contitioning -text "Conditioning"
	checkbutton .main.right.rapidReeflexes -text "Rapid Reflexes"
	checkbutton .main.right.weightControl -text "Weight Control"
	checkbutton .main.right.physicalBenefits -text "Physical Benefits"
	checkbutton .main.right.breathingControl -text "Breathing Control"
	checkbutton .main.right.practicalDefenseSkills -text "Practical Defense Skills"
	button .main.right.advance3 -text "NEXT" -command [list advance3 $studentID]
	button .main.right.retreat3 -text "PREV" -command [list retreat3]
	grid config .main.right.mentalBenefitsLbl -column 0 -row 0 -sticky "w"
	grid config .main.right.focus -column 0 -row 1 -sticky "w"
	grid config .main.right.alertness -column 1 -row 1 -sticky "w" 
	grid config .main.right.discipline -column 2 -row 1 -sticky "w"
	grid config .main.right.motivation -column 3 -row 1 -sticky "w"
	grid config .main.right.obediance -column 0 -row 2 -sticky "w"
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
	grid config .main.right.advance3 -column 3 -row 14 -sticky "w"
	grid config .main.right.retreat3 -column 2 -row 14 -sticky "e"
}
proc buildSection4 { studentID } {
	.main.left.section4 configure -foreground green
	label .main.right.howFindAcademyLbl -text "How did you happen to hear about our Academy?"
	entry .main.right.howFindAcademyEnt
	label .main.right.whatMotivatedLbl -text "What motivated you to bring your son / daughter today?"
	entry .main.right.whatMotivatedEnt
	label .main.right.isThereAnyoneChildWouldLikeToAttendWithLbl -text "Is there anyone your son / daughter would like to do this with?"
	radiobutton .main.right.attendWithYes -text "Yes" -variable attendWithYesNo -value 1
	radiobutton .main.right.attendWithNo -text "No" -variable attendWithYesNo   -value 0
	label .main.right.attendWithWhoLbl -text "Name: "
	entry .main.right.attendWithWhoEnt
	label .main.right.activitiesAlready -text "Does your son / Daughter do any activities already?"
	radiobutton .main.right.activitiesAlreadyYes -text "Yes" 	-variable activitiesAlreadyYesNo -value 1
	radiobutton .main.right.activitiesAlreadyNo -text "No" 		-variable activitiesAlreadyYesNo -value 0
	label .main.right.activityLbl -text "Activity: "
	entry .main.right.activityEnt
	checkbutton .main.right.mon -text "Mon"
	checkbutton .main.right.tue -text "Tue"
	checkbutton .main.right.wed -text "Wed"
	checkbutton .main.right.thu -text "Thu"
	checkbutton .main.right.fri -text "Fri"
	checkbutton .main.right.sat -text "Sat"
	checkbutton .main.right.sun -text "Sun"
	label .main.right.timeLbl -text "Time(S)"
	entry .main.right.timeEnt
	button .main.right.advance4 -text "NEXT" -command [list advance4 $studentID ]
	button .main.right.retreat4 -text "PREV" -command [list retreat4 $studentID]

	grid config .main.right.howFindAcademyLbl -column 0 -row 0 -columnspan 4 -sticky "w"
	grid  config .main.right.howFindAcademyEnt -column 1 -row 1 -columnspan 3 -sticky "w"
	grid  config .main.right.whatMotivatedLbl -column 0 -row 2 -columnspan 4 -sticky "w"
	grid  config .main.right.whatMotivatedEnt -column 1 -row 3 -columnspan 3 -sticky "w"
	grid  config .main.right.isThereAnyoneChildWouldLikeToAttendWithLbl -column 0 -row 4 -columnspan 4 -sticky "w"
	grid  config .main.right.attendWithYes -column 0 -row 5 -sticky "w"
	grid  config .main.right.attendWithNo -column 1 -row 5 -sticky "w"
	grid config .main.right.attendWithWhoLbl -column 2 -row 5 -sticky "w"
	grid config .main.right.attendWithWhoEnt -column 3 -row 5 -sticky "w"
	grid config .main.right.activitiesAlready -column 0 -row 6 -columnspan 4 -sticky "w"
	grid config .main.right.activitiesAlreadyYes -column 0 -row 7 -sticky "w"
	grid config .main.right.activitiesAlreadyNo -column 1 -row 7 -sticky "w"
	grid config .main.right.activityLbl -column 0 -row 8  -sticky "w"
	grid config .main.right.activityEnt -column 1 -columnspan 3 -row 8 -sticky "w"
	grid config .main.right.mon -column 0 -row 9 -sticky "w"
	grid config .main.right.tue -column 1 -row 9 -sticky "w"
	grid config .main.right.wed -column 2 -row 9 -sticky "w"
	grid config .main.right.thu -column 3 -row 9 -sticky "w"
	grid config .main.right.fri -column 0 -row 10 -sticky "w"
	grid config .main.right.sat -column 1 -row 10 -sticky "w"
	grid config .main.right.sun -column 2 -row 10 -sticky "w"
	grid config .main.right.timeLbl -column 0 -row 11 -sticky "w"
	grid config .main.right.timeEnt -column 1 -row 11
	grid config .main.right.advance4 -column 3 -row 12 -sticky "w"
	grid config .main.right.retreat4 -column 2 -row 12 -sticky "e"
}

proc buildSection5 { studentID } {
	label .main.right.medicalConditionsLbl -text "Please check any medical conditions we should be aware of."
	label .main.right.medicalConditionsSubLbl -text "Medical Conditions"
	checkbutton .main.right.asthma -text "Asthma"
	checkbutton .main.right.arthritus -text "Arthritus"
	checkbutton .main.right.diabetes -text "Diabetes"
	checkbutton .main.right.kneeProblems -text "Knee Problems"
	checkbutton .main.right.backProblems -text "Back Problems"
	checkbutton .main.right.heartConditions -text "Heart Conditions"
	checkbutton .main.right.highBloodPressure -text "High Blood Pressure"
	label .main.right.alergicReactionLbl -text "Alergic Reactions"
	entry .main.right.alergicReactionEnt
	label .main.right.physicalLimitationsLbl -text "Physical Limitations"
	entry .main.right.physicalLimitationsEnt
	label .main.right.specialMedicationLbl -text "Special Medications"
	entry .main.right.specialMedicationEnt
	button .main.right.advance5 -text "NEXT" -command [list advance5 $studentID]
	button .main.right.retreat5 -text "PREV" -command [list retreat5 $studentID]

	grid config .main.right.medicalConditionsLbl -column 0 -row 0 -columnspan 4 -sticky "w"
	grid config .main.right.medicalConditionsSubLbl -column 0 -row 1 -columnspan 4 -sticky "w"
	grid config .main.right.asthma -column 0 -row 2 -sticky "w"
	grid config .main.right.arthritus -column 1 -row 2 -sticky "w"
	grid config .main.right.diabetes -column 2 -row 2 -sticky "w"
	grid config .main.right.kneeProblems -column 3 -row 2 -sticky "w"
	grid config .main.right.backProblems -column 0 -row 3 -sticky "w"
	grid config .main.right.heartConditions -column 1 -row 3 -sticky "w"
	grid config .main.right.highBloodPressure -column 2 -row 3 -sticky "w"
	grid config .main.right.alergicReactionLbl -column 0 -row 4 -columnspan 4 -sticky "w"
	grid config .main.right.alergicReactionEnt -column 0 -row 5 -columnspan 4 -sticky "w"
	grid config .main.right.physicalLimitationsLbl -column 0 -row 6 -columnspan 4 -sticky "w"
	grid config .main.right.physicalLimitationsEnt -column 0 -row 7 -columnspan 4 -sticky "w"
	grid config .main.right.specialMedicationLbl -column 0 -row 8 -columnspan 4 -sticky "w"
	grid config .main.right.specialMedicationEnt -column 0 -row 9 -columnspan 4 -sticky "w"
	grid config .main.right.advance5 -column 3 -row 9 -sticky "w"
	grid config .main.right.retreat5 -column 2 -row 9 -sticky "e"

	.main.left.section5 configure -foreground green
}

proc buildSection6 { studentID } {
	label .main.right.question5 -text "Does your child have any previous martial arts experience?"
	checkbutton .main.right.question5Y -variable question5Y -text "Yes"
	checkbutton .main.right.question5N -variable question5N -text "No"
	label .main.right.question6 -text "If yes is he / she still training?"
	checkbutton .main.right.question6Y -variable question5Y -text "Yes"
	checkbutton .main.right.question6N -variable question5N -text "No"
	label .main.right.question6NoAddendum -text "If No, why did they stop?"
	label .main.right.question6LikesLbl -text "Likes:"
	entry .main.right.question6LikesEnt
	label .main.right.question6DislikesLbl -text "Dislikes:"
	entry .main.right.question6DislikesEnt
	label .main.right.question7 -text "How long have you been interested in Martial Arts for your child?"
	checkbutton .main.right.question7ntl -variable question7ntl -text "Not too long"
	checkbutton .main.right.question7fm -variable question7fm -text "Few Months"
	checkbutton .main.right.question7o1y -variable question7o1y -text "Over 1 Year"
	label .main.right.question8Lbl -text "What are the two most important things you want your son / daughter to get out of thid program?"
	entry .main.right.question8Ent
	label .main.right.question9Lbl -text "If your son / daughter achieves these benefits, how would feel?"
	entry .main.right.question9Ent
	label .main.right.question10Lbl -text "How would it benefit your child:"
	label .main.right.question10ALbl -text "Short Term:"
	label .main.right.question10BLbl -text "Medium:"
	label .main.right.question10CLbl -text "Long Term:"
	entry .main.right.question10AEnt
	entry .main.right.question10BEnt
	entry .main.right.question10CEnt
	label .main.right.question11Lbl -text "How serious are you about enrolling your child in our programme to recieve these benefits?"
	entry .main.right.question11Ent
	label .main.right.question12Lbl -text "Do youu feel your significant other would support your descision to enroll your son / daughter in this programme to recieve these benefits?"
	checkbutton .main.right.question12Y -variable question12Y -text "Yes"
	checkbutton .main.right.question12N -variable question12N -text "No"
	label .main.right.question13Lbl -text "Based on everything we have discussed, do you feel we  have something that your child can benefit from and would like him / her to continue to learn?"
	checkbutton .main.right.question13Y -variable question13Y -text "Yes"
	checkbutton .main.right.question13N -variable question13N -text "No"
	label .main.right.question14Lbl -text "Is there anything preventing you from enrolling today?"
	checkbutton .main.right.question14Y -variable question14Y -text "Yes"
	checkbutton .main.right.question14N -variable question14N -text "No"
	entry .main.right.question14Ent
	label .main.right.question15Lbl -text "Declaration in question 15:"
	checkbutton .main.right.question15Y -variable question15Y -text "Yes"
	checkbutton .main.right.question15N -variable question15N -text "No"
	label .main.right.question16Lbl -text "As a referal based academy our new students are encoraged to reccommend a friend."
	label .main.right.question16NLbl -text "Name:"
	entry .main.right.question16NEnt
	label .main.right.question16CLbl -text "Contact:"
	entry .main.right.question16CEnt
	button .main.right.advance6 -text "NEXT" -command [list advance6 $studentID]
	button .main.right.retreat6 -text "PREV" -command [list retreat6 $studentID]
	grid config .main.right.question5 -column 0 -row 0 -columnspan 4 -sticky "w"
	grid config .main.right.question5Y -column 0 -row 1 -sticky "w"
	grid config .main.right.question5N -column 1 -row 1 -sticky "w"
	grid config .main.right.question6 -column 0 -row 2 -columnspan 4 -sticky "w"
	grid config .main.right.question6Y -column 0 -row 3 -sticky "w"
	grid config .main.right.question6N -column 1 -row 3 -sticky "w"
	grid config .main.right.question6NoAddendum -column 2 -row 3 -columnspan 2 -sticky "w"
	grid config .main.right.question6LikesLbl -column 0 -row 4 -sticky "e"
	grid config .main.right.question6LikesEnt -column 1 -row 4 -sticky "w"
	grid config .main.right.question6DislikesLbl -column 2 -row 4 -sticky "e"
	grid config .main.right.question6DislikesEnt -column 3 -row 4 -sticky "w"
	grid config .main.right.question7 -column 0 -row 5 -columnspan 4 -sticky "w"
	grid config .main.right.question7ntl -column 0 -row 6 -sticky "w"
	grid config .main.right.question7fm -column 1 -row 6 -sticky "w"
	grid config .main.right.question7o1y -column 2 -row 6 -sticky "w"
	grid config .main.right.question8Lbl -column 0 -row 7 -columnspan 4 -sticky "w"
	grid config .main.right.question8Ent -column 0 -row 8 -columnspan 4 -sticky "w"
	grid config .main.right.question9Lbl -column 0 -row 9 -columnspan 4 -sticky "w"
	grid config .main.right.question9Ent -column 0 -row 10 -columnspan 4 -sticky "w"
	grid config .main.right.question10Lbl -column 0 -row 11 -columnspan 4 -sticky "w"
	grid config .main.right.question10ALbl -column 0 -row 12 -sticky "e"
	grid config .main.right.question10AEnt -column 1 -row 12 -sticky "w"
	grid config .main.right.question10BLbl -column 0 -row 13 -sticky "e"
	grid config .main.right.question10BLbl -column 1 -row 13 -sticky "w"
	grid config .main.right.question10CEnt -column 0 -row 14 -sticky "w"
	grid config .main.right.question10CEnt -column 1 -row 14 -sticky "e"
	grid config .main.right.question11Lbl -column 0 -row 15 -columnspan 4 -sticky "w"
	grid config .main.right.question11Ent -column 0 -row 16 -columnspan 4 -sticky "w"
	grid config .main.right.question12Lbl -column 0 -row 17 -columnspan 4 -sticky "w"
	grid config .main.right.question12Y -column 0 -row 18 -sticky "w"
	grid config .main.right.question12N -column 1 -row 18 -sticky "w"
	grid config .main.right.question13Lbl -column 0 -row 19 -columnspan 4 -sticky "w"
	grid config .main.right.question13Y -column 0 -row 20 -sticky "w"
	grid config .main.right.question13N -column 1 -row 20 -sticky "w"
	grid config .main.right.question14Lbl -column 0 -row 21 -columnspan 4 -sticky "w"
	grid config .main.right.question14Y -column 0 -row 22 -sticky "w"
	grid config .main.right.question14N -column 1 -row 22 -sticky "w"
	grid config .main.right.question14Ent -column 2 -row 22 -sticky "w"
	grid config .main.right.question15Lbl -column 0 -row 23 -columnspan 4 -sticky "w"
	grid config .main.right.question15Y -column 0 -row 24 -sticky "w"
	grid config .main.right.question15N -column 1 -row 24 -sticky "w"
	grid config .main.right.question16Lbl -column 0 -row 25 -columnspan 4 -sticky "w"
	grid config .main.right.question16NLbl -column 0 -row 26 -sticky "e"
	grid config .main.right.question16NEnt -column 1 -row 26 -sticky "w"
	grid config .main.right.question16CLbl -column 2 -row 26 -sticky "e"
	grid config .main.right.question16CEnt -column 3 -row 26 -sticky "w"
	grid config .main.right.advance6 -column 3 -row 27 -sticky "w"
	grid config .main.right.retreat6 -column 3 -row 27 -sticky "e"

	.main.left.section6 configure -foreground green
}



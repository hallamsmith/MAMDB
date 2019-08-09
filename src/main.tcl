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
	button .main.right.submit2 -text "Submit" -command submitSection2
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
	grid config .main.right.submit2 -column 3 -row 14 -sticky "w"
}
proc buildSection3 { } {
	.main.left.section3 configure -foreground green
	label .main.right.howFindAcademyLbl -text "How did you happen to hear about our Academy?"
	entry .main.right.howFindAcademyEnt
	label .main.right.whatMotivatedLbl -text "What motivated you to bring your son / daughter today?"
	entry .main.right.whatMotivatedEnt
	label .main.right.isThereAnyoneChildWouldLikeToAttendWithLbl -text "Is there anyone your son / daughter would like to do this with?"
	radiobutton .main.right.attendWithYes -text "Yes" -variable attendWithYesNo
	radiobutton .main.right.attendWithNo -text "No" -variable attendWithYesNo -width 20
	label .main.right.attendWithWhoLbl -text "Name: "
	entry .main.right.attendWithWhoEnt
	label .main.right.activitiesAlready -text "Does your son / Daughter do any activities already?"
	radiobutton .main.right.activitiesAlreadyYes -text "Yes" -variable activitiesAlreadyYesNo
	radiobutton .main.right.activitiesAlreadyNo -text "No" -variable activitiesAlreadyYesNo
	label .main.right.activityLbl -text "Activity: "
	entry .main.right.activityEnt
	checkbutton .main.right.mon -variable mon -text "Mon"
	checkbutton .main.right.tue -variable tue -text "Tue"
	checkbutton .main.right.wed -variable wed -text "Wed"
	checkbutton .main.right.thu -variable thu -text "Thu"
	checkbutton .main.right.fri -variable fri -text "Fri"
	checkbutton .main.right.sat -variable sat -text "Sat"
	checkbutton .main.right.sun -variable sun -text "Sun"
	label .main.right.timeLbl -text "Time(S)"
	entry .main.right.timeEnt
	button .main.right.submit3 -text "Submit" -command submitSection3

	grid config .main.right.howFindAcademyLbl -column 0 -row 0 -columnspan 4 -sticky "w"
	grid config .main.right.howFindAcademyEnt -column 1 -row 1 -columnspan 3 -sticky "w"
	grid config .main.right.whatMotivatedLbl -column 0 -row 2 -columnspan 4 -sticky "w"
	grid config .main.right.whatMotivatedEnt -column 1 -row 3 -columnspan 3 -sticky "w"
	grid config .main.right.isThereAnyoneChildWouldLikeToAttendWithLbl -column 0 -row 4 -columnspan 4 -sticky "w"
	grid config .main.right.attendWithYes -column 0 -row 5 -sticky "w"
	grid config .main.right.attendWithNo -column 1 -row 5 -sticky "w"
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
	grid config .main.right.submit3 -column 3 -row 12 -sticky "w"
}

proc buildSection4 { } {
	label .main.right.medicalConditionsLbl -text "Please check any medical conditions we should be aware of."
	label .main.right.medicalConditionsSubLbl -text "Medical Conditions"
	checkbutton .main.right.asthma -variable asthma -text "Asthma"
	checkbutton .main.right.arthritus -variable arthritus -text "Arthritus"
	checkbutton .main.right.diabetes -variable diabetus -text "Diabetus"
	checkbutton .main.right.kneeProblems -variable kneeProblems -text "Knee Problems"
	checkbutton .main.right.backProblems -variable backProblems -text "Back Problems"
	checkbutton .main.right.heartConditions -variable heartConditions -text "Heart Conditions"
	checkbutton .main.right.highBloodPressure -variable highhBloodPressure -text "High Blood Pressure"
	label .main.right.alergicReactionLbl -text "Alergic Reactions"
	entry .main.right.alergicReactionEnt
	label .main.right.physicalLimitationsLbl -text "Physical Limitations"
	entry .main.right.physicalLimitationsEnt
	label .main.right.specialMedicationLbl -text "Special Medications"
	entry .main.right.specialMedicationEnt
	button .main.right.submit4 -text "Submit" -command submitSection4

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
	grid config .main.right.submit4 -column 3 -row 9 -sticky "w"

	.main.left.section4 configure -foreground green
}

proc buildSection5 { } {
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
	grid config .main.right.question5 -column 0 -row 0 -columnspan 4 -sticky "w"
	grid config .main.right.question5Y -column 0 -row 1 -columnspan 4 -sticky "w"
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

	.main.left.section5 configure -foreground green
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

proc submitSection2 { } {
	grid forget .main.right.mentalBenefitsLbl 
	grid forget .main.right.focus 
	grid forget .main.right.alertness
	grid forget .main.right.discipline
	grid forget .main.right.motivation
	grid forget .main.right.obediance
	grid forget .main.right.selfControl
	grid forget .main.right.selfEsteem
	grid forget .main.right.selfRespect
	grid forget .main.right.betterGrades
	grid forget .main.right.concentration
	grid forget .main.right.achieveGoals
	grid forget .main.right.manageStress
	grid forget .main.right.selfConfidence
	grid forget .main.right.respectForOthers
	grid forget .main.right.healthBenefitsLbl
	grid forget .main.right.cardiovascular 
	grid forget .main.right.muscleEndurance
	grid forget .main.right.muscularStrength
	grid forget .main.right.bodyComposition
	grid forget .main.right.skillBenefitsLbl
	grid forget .main.right.agility 
	grid forget .main.right.power
	grid forget .main.right.speed 
	grid forget .main.right.balance
	grid forget .main.right.coordination
	grid forget .main.right.reactionTime
	grid forget .main.right.physicalBenefitsLbl 
	grid forget .main.right.mobilitty 
	grid forget .main.right.exercise 
	grid forget .main.right.flexibility
	grid forget .main.right.relaxation
	grid forget .main.right.endurance
	grid forget .main.right.muscleTone 
	grid forget .main.right.contitioning
	grid forget .main.right.rapidReeflexes
	grid forget .main.right.weightControl
	grid forget .main.right.physicalBenefits
	grid forget .main.right.breathingControl
	grid forget .main.right.practicalDefenseSkills
	grid forget .main.right.submit2
	.main.left.section2 configure -foreground black
	buildSection3
}

proc submitSection3 { } {
	grid forget .main.right.howFindAcademyLbl
	grid forget .main.right.howFindAcademyEnt
	grid forget .main.right.whatMotivatedLbl
	grid forget .main.right.whatMotivatedEnt
	grid forget .main.right.isThereAnyoneChildWouldLikeToAttendWithLbl 
	grid forget .main.right.attendWithYes 
	grid forget .main.right.attendWithNo
	grid forget .main.right.attendWithWhoLbl 
	grid forget .main.right.attendWithWhoEnt
	grid forget .main.right.activitiesAlready
	grid forget .main.right.activitiesAlreadyYes
	grid forget .main.right.activitiesAlreadyNo
	grid forget .main.right.activityLbl
	grid forget .main.right.activityEnt
	grid forget .main.right.mon 
	grid forget .main.right.tue
	grid forget .main.right.wed
	grid forget .main.right.thu
	grid forget .main.right.fri
	grid forget .main.right.sat
	grid forget .main.right.sun
	grid forget .main.right.timeLbl 
	grid forget .main.right.timeEnt
	grid forget .main.right.submit3
	.main.left.section3 configure -foreground black
	buildSection4
}

proc submitSection4 { } {
	grid forget .main.right.medicalConditionsLbl 
	grid forget .main.right.medicalConditionsSubLbl
	grid forget .main.right.asthma 
	grid forget .main.right.arthritus
	grid forget .main.right.diabetes
	grid forget .main.right.kneeProblems
	grid forget .main.right.backProblems
	grid forget .main.right.heartConditions
	grid forget .main.right.highBloodPressure
	grid forget .main.right.alergicReactionLbl
	grid forget .main.right.alergicReactionEnt
	grid forget .main.right.physicalLimitationsLbl
	grid forget .main.right.physicalLimitationsEnt
	grid forget .main.right.specialMedicationLbl 
	grid forget .main.right.specialMedicationEnt
	grid forget .main.right.submit4
	.main.left.section4 configure -foreground black
	buildSection5


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


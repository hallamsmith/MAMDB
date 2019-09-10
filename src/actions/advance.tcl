source "ui/clean.tcl"
proc advance1 { studentID paymentID } {
	set scSurname [.main.right.scSurnameEnt get]
	set scFirstname [.main.right.scFirstnameEnt get]
	set scTitle [.main.right.scTitleEnt get]
	set scDOB [.main.right.scDOBEnt get]
	set scAddress1 [.main.right.scAddress1Ent get]
	set scAddress2 [.main.right.scAddress2Ent get]
	set scAddress3 [.main.right.scAddress3Ent get]
	set scAddress4 [.main.right.scAddress4Ent get]
	set scPostcode [.main.right.scPostcodeEnt get]
	set scHomePhoneEnt [.main.right.scHomePhoneEnt get]
	set scMobilePhoneEnt [.main.right.scMobilePhoneEnt get]
	set scWorkPhoneEnt [.main.right.scWorkPhoneEnt get]
	set scEmail [.main.right.scEmailEnt get]
	set scMemNum [.main.right.scMembershipNumEnt get]
	MAMDB eval {INSERT INTO Customer_Details VALUES($paymentID, $scSurname, $scFirstname, $scTitle, $scDOB, $scAddress1, $scAddress2, $scAddress3, $scAddress4, $scPostcode, $scHomePhoneEnt, $scMobilePhoneEnt, $scWorkPhone, $scEmail, $scMemNum)}
	cleanSection1
	.main.left.section1 configure -foreground black
	buildSection2 $studentID $paymentID
	
}
proc advance2 { studentID paymentID } {
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
	MAMDB eval {INSERT INTO Student_Static VALUES($studentID, $name, $dob, $mother, $motherocc, $father, $fatherocc, $homenum, $mobilenum, $email, $address1, $address2, $address3, $address4, $postcode, $paymentID)}
	cleanSection2
	.main.left.section2 configure -foreground black
	buildSection3 $studentID

}

proc advance3 { studentID } {
	global ::focus
	global ::aletrness
	global ::discipline
	global ::motivation
	global ::obediance
	global ::selfControl
	global ::selfEsteem
	global ::selfRespect
	global ::betterGrades
	global ::concentration
	global ::achieveGoals
	global ::manageStress
	global ::selfConfidence
	global ::respectForOthers
	global ::cardiovascular
	global ::muscleEndurance
	global ::muscularStrength
	global ::bodyComposition
	global ::agility
	global ::power
	global ::speed
	global ::balance
	global ::coordination
	global ::reactionTime
	global ::mobility
	global ::exercise
	global ::flexibility
	global ::relaxation
	global ::endurance
	global ::muscleTone
	global ::conditioning
	global ::rapidReflexes
	global ::weightControl
	global ::physicalBenefits
	global ::breathingControl
	global ::practicalDefenseSkills
	MAMDB eval {insert into Student_Benefits values($studentID, $focus, $alertness, $discipline, $motivation, $obediance, $selfControl, $selfEsteem, $selfspect, $betterGrades, $concentration, $achieveGoals, $manageStress, $selfConfidence, $respectForOthers, $cardiovascular, $muscleEndurance, $muscularStrength, $bodyComposition, $agility, $power, $speed, $balance, $coordination, $reactionTime, $mobility, $exercise, $flexiblity, $relaxation, $endurance, $muscleTone, $conditioning, $rapidReflexes, $weightControl, $physicalFitness, $breathingControl, $practicalDefenceSkills)}
	cleanSection3
	.main.left.section3 configure -foreground black
	buildSection4 $studentID
}

proc advance4 { studentID } {
	global ::mon
	global ::tue
	global ::wed
	global ::thu
	global ::fri
	global ::sat
	global ::sun
	global ::attendWithYesNo
	global ::activitiesAlreadyYesNo
	set howFindAcademy [.main.right.howFindAcademyEnt get]
	set whatMotivated [.main.right.whatMotivatedEnt get]
	set attendWith [.main.right.attendWithWhoEnt get]
	set activity [.main.right.activityEnt get]
	set times [.main.right.timeEnt get]
	MAMDB eval {insert into Student_Pre_Interview values($studentID, $howFindAcademy, $whatMotivated, $attendWithYN, $attendWith, $activitiesYN, $activity, $mon, $tue, $wed, $thu, $fri, $sat, $sun, $times)}
	cleanSection4
	.main.left.section4 configure -foreground black
	buildSection5 $studentID
}

proc advance5 { studentID } {
	global ::asthma
	global ::arthritus
	global ::diabetes
	global ::kneeProblems
	global ::backProblems
	global ::heartConditions
	global ::highBloodPressure
	set alergicReaction [.main.right.alergicReactionEnt get]
	set physicalLimitations [.main.right.physicalLimitationsEnt get]
	set specialMedication [.main.right.specialMedicationEnt get]
	MAMDB eval {insert into Student_Medical values($studentID, $asthma, $arthritus, $diabetes, $kneeProblems, $backProblems, $heartConditions, $highBloodPressure, $alergicReaction, $physicalLimitations, $specialMedication)}
	cleanSection5
	.main.left.section5 configure -foreground black
	buildSection6 $studentID
}

proc advance6 { studentID } {
	cleanSection5
	.main.left.section5 configure -foreground black
	buildSection6
}
proc submitSection6 { } {
	cleanSection6
	.main.left.section6 configure -foreground black
}

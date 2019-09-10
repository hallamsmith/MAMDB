CREATE TABLE "Student_Static" (
	"StudentID"	INTEGER,
	"StudentName"	VARCHAR(50),
	"DOB"		DATE,
	"MotherName"	VARCHAR(50),
	"MotherOccupation"	VARCHAR(50),
	"FatherName"	VARCHAR(50),
	"FatherOccupation"	VARCHAR(50),
	"HomeNumber"	VARCHAR(50),
	"MobileNumber"	VARCHAR(50),
	"Email"		VARCHAR(50),
	"Address1"	VARCHAR(50),
	"Address2"	VARCHAR(50),
	"Address3"	VARCHAR(50),
	"Address4"	VARCHAR(50),
	"Postcode"	VARCHAR(50),
	"CustomerID"	INTEGER,
	PRIMARY KEY("StudentID"),
	FOREIGN KEY("CustomerID") REFERENCES Customer_Details(CustomerID)
);
CREATE TABLE "Student_Benefits" (
	"StudentID"	BOOLEAN,
	"Focus"		BOOLEAN,
	"Alertness"	BOOLEAN,
	"Discipline"	BOOLEAN,
	"Motivation"	BOOLEAN,
	"Obediance"	BOOLEAN,
	"SelfControl"	BOOLEAN,
	"SelfEsteem"	BOOLEAN,
	"SelfRespect"	BOOLEAN,
	"BetterGrades"	BOOLEAN,
	"Concentration"	BOOLEAN,
	"AchieveGoals"	BOOLEAN,
	"ManageStress"	BOOLEAN,
	"SelfConfidence"	BOOLEAN,
	"RespectForOthers"	BOOLEAN,
	"Cardiovascular"	BOOLEAN,
	"MuscleEndurance"	BOOLEAN,
	"MuscularStrength"	BOOLEAN,
	"BodyComposition"	BOOLEAN,
	"Agility"	BOOLEAN,
	"Power"		BOOLEAN,
	"Speed"		BOOLEAN,
	"Balance"	BOOLEAN,
	"Coordination"	BOOLEAN,
	"ReactionTime"	BOOLEAN,
	"Mobility"	BOOLEAN,
	"Exercise"	BOOLEAN,
	"Flexibilty"	BOOLEAN,
	"Relaxation"	BOOLEAN,
	"Endurance"	BOOLEAN,
	"MuscleTone"	BOOLEAN,
	"Conditioning"	BOOLEAN,
	"RapidReflexes"	BOOLEAN,
	"WeightControl"	BOOLEAN,
	"PhysicalFitness"	BOOLEAN,
	"BreathingControl"	BOOLEAN,
	"PracticalDefenceSkills"	BOOLEAN,
	PRIMARY KEY("StudentID"),
	FOREIGN KEY("StudentID") REFERENCES Student_Static(StudentID)
);
CREATE TABLE "Student_Pre_Interview" (
	"StudentID"	INTEGER,
	"HowHearAboutAcademy"	VARCHAR(50),
	"WhatMotivated"	VARCHAR(50),
	"AttendWithYN"	BOOLEAN,
	"AttendWithName"	VARCHAR(50),
	"AttendActivitiesYN"	BOOLEAN,
	"AttendActivitiesActivity"	VARCHAR(50),
	"Monday"	BOOLEAN,
	"Tuesday"	BOOLEAN,
	"Wednesday"	BOOLEAN,
	"Thursday"	BOOLEAN,
	"Friday"	BOOLEAN,
	"Saturday"	BOOLEAN,
	"Sunday"	BOOLEAN,
	"Times"		VARCHAR(50),
	PRIMARY KEY("StudentID"),
	FOREIGN KEY("StudentID") REFERENCES Student_Static(StudentID)
);
CREATE TABLE "Student_Medical" (
	"StudentID"	INTEGER,
	"Asthma"	BOOLEAN,
	"Arthritus"	BOOLEAN,
	"Diabetes"	BOOLEAN,
	"KneeProblems"	BOOLEAN,
	"BackProblems"	BOOLEAN,
	"HeartConditions"	BOOLEAN,
	"HighBloodPressure"	BOOLEAN,
	"AlergicReactions"	VARCHAR(50),
	"PhysicalLimitations"	VARCHAR(50),
	"SpecialMedications"	VARCHAR(50),
	PRIMARY KEY("StudentID"),
	FOREIGN KEY("StudentID") REFERENCES Student_Static(StudentID)
);
CREATE TABLE "Student_Interview" (
	"StudentID"	INTEGER,
	"PreviousExperienceY"	BOOLEAN,
	"PreviousExperienceN"	BOOLEAN,
	"StillTrainingY"	BOOLEAN,
	"StillTrainingN"	BOOLEAN,
	"StillTrainingLikes"	VARCHAR(50),
	"StillTrainingDislikes"	VARCHAR(50),
	"HowLongInterestedNTL"	BOOLEAN,
	"HowLongInterestedM"	BOOLEAN,
	"HowLongInterestedLT"	BOOLEAN,
	"HowSerious"		VARCHAR(50),
	"SignificantOtherSupportY"	BOOLEAN,
	"SignificantOtherSupportN"	BOOLEAN,
	"ContinueToLearnY"	BOOLEAN,
	"ContinueToLearnN"	BOOLEAN,
	"PreventingEnrollY"	BOOLEAN,
	"PreventingEnrollN"	BOOLEAN,
	"PreventingEnrollReason"	BOOLEAN,
	"FullSupportY"	BOOLEAN,
	"FullSupportN"	BOOLEAN,
	"ReferalName"	VARCHAR(50),
	"ReferalContact"	VARCHAR(50),
	PRIMARY KEY("StudentID"),
	FOREIGN KEY("StudentID") REFERENCES Student_Static(StudentID)
);
CREATE TABLE "Customer_Details" (
	"CustomerID"	INTEGER,
	"Surname"	VARCHAR(50),
	"Firstname"	VARCHAR(50),
	"Title"		VARCHAR(50),
	"DOB"		DATE,
	"Address1"	VARCHAR(50),
	"Address2"	VARCHAR(50),
	"Address3"	VARCHAR(50),
	"Address4"	VARCHAR(50),
	"Postcode"	VARCHAR(10),
	"HomeTelephone"	VARCHAR(20),
	"MobileTelephone"	VARCHAR(20),
	"WorkTelephone"	VARCHAR(20),
	"Email"		VARCHAR(30),
	"MemNumber"	VARCHAR(50),
	PRIMARY KEY("CustomerID")
);

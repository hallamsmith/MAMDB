source "ui/clean.tcl"
proc newStudentPayment { } {
	set studentID [MAMDB eval {select IFNULL((MAX(StudentID)+1), 1) from Student_Static}]
	set paymentID [MAMDB eval {select IFNULL((MAX(CustomerID)+1), 1) from Customer_Details}]
	cleanFrontPage
	buildSection1 $studentID $paymentID
}

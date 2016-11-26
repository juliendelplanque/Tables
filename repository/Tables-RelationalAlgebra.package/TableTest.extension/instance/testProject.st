*Tables-RelationalAlgebra
testProject
	| projected |
	projected := table1 project: #(b d).
	self assertCollection: projected rows hasSameElements: #(
		#(2 4)
		#(4 6)
		#(6 8)
		#(3 4)	
	).
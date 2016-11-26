*Tables-RelationalAlgebra
testNaturalJoinWith
	| joined |
	joined := table1
					naturalJoin: [ :table1Row :table2Row |
						table1Row first = table2Row first ]
					with: table2.
	self assertCollection: joined rows hasSameElements: #(
		#(1 2 3 4 1 3 4)
		#(2 4 5 6 2 5 6)
		#(3 6 7 8 3 7 8)
		#(1 3 2 4 1 3 4)	
	).
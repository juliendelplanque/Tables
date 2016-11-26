running
setUp
	table1 := Table header: #(a b c d).
	table1 addAllRow: #(
		#(1 2 3 4)
		#(2 4 5 6)
		#(3 6 7 8)
		#(1 3 2 4)	
	).
	table2 := Table header: #(e f g).
	table2 addAllRow: #(
		#(1 3 4)
		#(2 5 6)
		#(3 7 8)
		#(9 2 4)	
	).
*Tables-RelationalAlgebra
testSelect
	| selected |
	selected :=  table1 select: [ :row | row first = 1 or: [ row first = 2 ] ].
	self assertCollection: selected rows hasSameElements: #(
		#(1 2 3 4)
		#(2 4 5 6)
		#(1 3 2 4)
	).
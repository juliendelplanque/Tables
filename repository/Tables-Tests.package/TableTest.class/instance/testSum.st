tests-mathematical functions
testSum
	| sum |
	sum := table1 sum.
	self
		assert: sum header equals: table1 header;
		assert: sum size equals: 1;
		assert: (sum at: 1) equals: #(7 15 17 22).
	
	sum := table2 sum.
	self
		assert: sum header equals: table2 header;
		assert: sum size equals: 1;
		assert: (sum at: 1) equals: #(15 17 22).
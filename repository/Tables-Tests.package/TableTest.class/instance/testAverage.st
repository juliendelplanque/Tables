tests-mathematical functions
testAverage
	| average |
	average := table1 average.
	self
		assert: average header equals: table1 header;
		assert: average size equals: 1;
		assert: (average at: 1) equals: {7/4 . 15/4 . 17/4 . 11/2}.
		
	average := table2 average.
	self
		assert: average header equals: table2 header;
		assert: average size equals: 1;
		assert: (average at: 1) equals: { 15/4 . 17/4 . 11/2 }
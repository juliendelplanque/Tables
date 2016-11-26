tests-accessing - computed
testIndexOfColumn
	self
		assert: (table1 indexOfColumn: #a) equals: 1;
		assert: (table1 indexOfColumn: #b) equals: 2;
		assert: (table1 indexOfColumn: #c) equals: 3;
		assert: (table1 indexOfColumn: #d) equals: 4;
		should: [ table1 indexOfColumn: #e ] raise: UnkownColumns
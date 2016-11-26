*Tables-RelationalAlgebra
testIsSubsetOfHeader
	self
		assert: (table1 isSubsetOfHeader: #(b));
		assert: (table1 isSubsetOfHeader: #(a b));
		assert: (table1 isSubsetOfHeader: #(c d));
		deny: (table1 isSubsetOfHeader: #(e f));
		deny: (table1 isSubsetOfHeader: #(d e))
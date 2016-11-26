*Tables-RelationalAlgebra
testRename
	| renamed |
	renamed := table1 rename: { #a -> #c . #c -> #a }.
	self assert: renamed header equals: #(c b a d)
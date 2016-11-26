*Tables-RelationalAlgebra
project: stringArray
	"Create a new table with the columns for which the name is in stringArray.
	"
	| result positionMap |
	(self isSubsetOfHeader: stringArray)
		ifFalse: [ (UnkownColumns columns: stringArray \ self header) signal ].
	result := self class header: stringArray.

	positionMap := stringArray collect: [ :s | self header indexOf: s ].
	self rows do: [ :row |
		result addRow: (positionMap collect: [ :i | row at: i ]) ].
	
	^ result
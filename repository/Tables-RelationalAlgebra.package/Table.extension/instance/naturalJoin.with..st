*Tables-RelationalAlgebra
naturalJoin: aBlock with: aTable
	"Perform an inner join on columns name with aBlock and aTable.
	"
	| result |
	(self header intersection: aTable header) ifNotEmpty: [ 
		SameColumnsName signal: 'Can''t join two tables that have columns with the same name.' ].
	result := self class header: self header , aTable header.
	self rows do: [ :selfRow |
		aTable rows
			select: [ :aTableRow | aBlock value: selfRow value: aTableRow ]
			thenDo: [ :aTableRow | result addRow: selfRow , aTableRow ] ].
	^ result
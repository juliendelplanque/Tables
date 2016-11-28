*Tables-RelationalAlgebra
select: aBlock
	"Select the row for which aBlock returns true.
	 aBlock takes n parameters where n is the row size.
	 Each parameters is an element of the row.
	"
	| selected |
	selected := self class header: self header.
	self rows do: [ :row |
		(aBlock value: row)
			ifTrue: [ selected addRow: row ] ].
	^ selected
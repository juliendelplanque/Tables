mathematical functions
sum
	| table |
	table := self class header: self header.
	table
		addRow: (self rows
			inject: ((1 to: self rowSize) collect: [ :i | 0 ])
			into: [ :sum :row |
				sum with: row collect: [ :s :r | s+r ] ]).
	^ table
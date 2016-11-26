*Tables-GT
gtInspectorRowsIn: composite
	<gtInspectorPresentationOrder: 0>
	| table |
	table := composite table
				title: 'Rows';
				display: [ self rows ];
				yourself.
	self header doWithIndex: [ :name :i |
		table column: name asString evaluated: [ :row | row at: i ] width: 75 ].
	^ table
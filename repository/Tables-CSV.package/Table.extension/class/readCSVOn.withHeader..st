*Tables-CSV
readCSVOn: readStream withHeader: aBoolean
	| table rows |
	rows := (NeoCSVReader on: readStream) upToEnd.
	table := self withRowSize: rows first size.
	aBoolean ifTrue: [ 
		table header: rows first.
		rows := rows allButFirst ].
	rows do: [ :row | table insert: row ].
	^ table
*Tables-CSV
csvString
	^ String streamContents: [ :stream |
		self writeCSVOn: stream ]
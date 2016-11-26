*Tables-CSV
fromCSVFile: aFileReference withHeader: aBoolean
	^ self readCSVOn: aFileReference readStream withHeader: aBoolean
*Tables-CSV
fromCSVFile: aFileReference
	^ self fromCSVFile: aFileReference readStream withHeader: true
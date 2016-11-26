*Tables-CSV
writeCSVOn: aStream
	(NeoCSVWriter on: aStream)
		nextPut: self header;
		nextPutAll: self rows
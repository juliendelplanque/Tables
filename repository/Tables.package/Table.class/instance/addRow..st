adding
addRow: anArray
	anArray size = self rowSize
		ifFalse: [ (WrongRowSize expectedSize: self rowSize) signal ].
	
	self rows add: anArray
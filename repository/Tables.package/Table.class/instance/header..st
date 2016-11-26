accessing
header: anArray
	anArray isNotNil
		ifFalse: [ self error: 'Can not change header once set.' ].
	anArray size = self rowSize
		ifFalse: [ (WrongRowSize expectedSize: self rowSize) signal ].
	header := anArray
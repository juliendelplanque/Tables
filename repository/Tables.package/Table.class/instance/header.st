accessing
header
	^ header ifNil: [ (1 to: self rowSize) collect: [ :i | '' ] ]
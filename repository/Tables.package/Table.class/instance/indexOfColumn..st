accessing - computed
indexOfColumn: aString
	^ self header
			indexOf: aString
			ifAbsent: [ (UnkownColumns columns: { aString }) signal ]
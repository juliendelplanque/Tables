*Tables-Latex
writeLaTeXRowsOn: aStream
	self rows do: [ :row |
		aStream << row first.
		row allButFirstDo: [ :element |
			aStream
				<< ' & ';
				<< element ].
		aStream
			<< ' \\'
			<< Smalltalk os lineEnding ]
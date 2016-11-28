*Tables-Latex
writeLaTeXHeaderOn: aStream
	aStream
		<< self header first.
	self header allButFirst do: [ :columnName |
		aStream
			space;
			<< $&;
			space;
			<< columnName ].
	aStream
		<< '\\';
		<< Smalltalk os lineEnding.
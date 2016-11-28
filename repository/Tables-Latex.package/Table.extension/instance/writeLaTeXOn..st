*Tables-Latex
writeLaTeXOn: aStream
	aStream << '\begin{tabular}{|'.
	self rowSize timesRepeat: [ aStream << 'c|' ].
	aStream << $}.
	aStream
		<< Smalltalk os lineEnding;
		<< '\hline';
		<< Smalltalk os lineEnding.
	self writeLaTeXHeaderOn: aStream.
	aStream
		<< '\hline';
		<< Smalltalk os lineEnding.
	self writeLaTeXRowsOn: aStream.
	aStream
		<< '\hline';
		<< Smalltalk os lineEnding;
		<< '\end{tabular}'
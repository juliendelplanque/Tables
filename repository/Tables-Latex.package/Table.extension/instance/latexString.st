*Tables-Latex
latexString
	^ String streamContents: [ :stream | self writeLaTeXOn: stream ]
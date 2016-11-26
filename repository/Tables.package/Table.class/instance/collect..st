enumerating
collect: aBlock
	"Collect the results of the evaluation of aBlock on each row and
	 store it in a new Table then returns it.
	"
	| newTable |
	newTable := self class header: self header.
	newTable rows: (self rows collect: aBlock).
	^ newTable
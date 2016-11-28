mathematical functions
average
	| sum |
	sum := self sum.
	^ sum collect: [ :row | row collect: [ :item | item / self size ] ]
*Tables-RelationalAlgebra
rename: aDictionaryOrListOfAssoc
	| result |
	result := self deepCopy.
	aDictionaryOrListOfAssoc asDictionary keysAndValuesDo: [ :key :value |
		result header
			at: (self header indexOf: key ifAbsent: [ (UnkownColumns columns: { key }) signal ])
			put: value ].
	^ result
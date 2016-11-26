baseline
definePackages: spec
	^ spec
		package: 'Tables';
		package: 'Tables-GT' with: [ spec requires: #('Tables') ];
		package: 'Tables-CSV' with: [ spec requires: #('Tables' 'NeoCSV') ];
		package: 'Tables-RelationalAlgebra' with: [ spec requires: #('Tables') ];
		yourself
baseline
defineDependencies: spec
	^ spec
		project: 'NeoCSV' with: [
			spec
				className: 'ConfigurationOfNeoCSV';
				version: #stable;
				repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main' ];
		yourself
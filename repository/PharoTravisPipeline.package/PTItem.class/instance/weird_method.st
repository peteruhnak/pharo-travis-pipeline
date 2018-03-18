accessing structure variables
weird_method
	true
		ifFalse: [ ^ false ].
	(true and: [ false ]) and: [ false ].
	^ 7
as yet unclassified
leftArrowForm
	| leftForm |
	leftForm := Form extent: (4@8) depth: 32.
	leftForm fillColor: Color transparent.
	0 to: 4 do: [ :increment |
		| top bottom x |
		top := 0 + increment.
		bottom := 7 - increment.
		x := 3 - increment.
		x >= 0 ifTrue: [ 
			top to: bottom do: [ :y |
				leftForm colorAt: x@y put: Color black ] ] ].
	^ leftForm
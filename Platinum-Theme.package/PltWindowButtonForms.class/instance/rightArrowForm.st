as yet unclassified
rightArrowForm
	| rightForm |
	rightForm := Form extent: 4@8 depth: 32.
	rightForm fillColor: Color transparent.
	0 to: 4 do: [ :increment |
		| top bottom x |
		top := 0 + increment.
		bottom := 7 - increment.
		x := increment.
		x < 4 ifTrue: [ 
			top to: bottom do: [ :y |
				rightForm colorAt: x@y put: Color black ] ] ].
	^ rightForm
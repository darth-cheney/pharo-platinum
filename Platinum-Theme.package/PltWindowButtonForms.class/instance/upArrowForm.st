as yet unclassified
upArrowForm
	| upForm |
	upForm := Form extent: (8@4) depth: 32.
	upForm fillColor: Color transparent.
	0 to: 4 do: [ :increment |
		| left right y |
		left := 0 + increment.
		right := 7 - increment.
		y := 3 - increment.
		y >= 0 ifTrue: [ 
			left to: right do: [ :x |
				upForm colorAt: x@y put: Color black ]]].
	^ upForm
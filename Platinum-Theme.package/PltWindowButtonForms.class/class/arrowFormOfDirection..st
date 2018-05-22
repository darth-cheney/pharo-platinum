as yet unclassified
arrowFormOfDirection: aSymbol
	(aSymbol = #top) ifTrue: [ 
		^ self new upArrowForm ].
	(aSymbol = #bottom) ifTrue: [ 
		^ self new downArrowForm ].
	(aSymbol = #right) ifTrue: [ 
		^ self new rightArrowForm ].
	(aSymbol = #left) ifTrue: [ 
		^ self new leftArrowForm ].
	^ self new upArrowForm
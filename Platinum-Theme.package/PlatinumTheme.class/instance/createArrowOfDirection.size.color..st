scrollbars
createArrowOfDirection: aSymbol size: anInteger color: aColor
	| form adjustedSize |
	"Create the scrollbar arrow of a given direction"
	form := PltWindowButtonForms arrowFormOfDirection: aSymbol.
	adjustedSize := (anInteger@anInteger).
	(adjustedSize > form extent) ifTrue: [ 
		form offset: ((adjustedSize - form extent) / 2) ].
	(aColor = Color black) ifFalse: [ 
		form mapColor: Color black to: aColor ].
	^ form asMorph
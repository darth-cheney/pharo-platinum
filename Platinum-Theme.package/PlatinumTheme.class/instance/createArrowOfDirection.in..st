scrollbars
createArrowOfDirection: aSymbol in: aRectangle
	"Create a scrollbar arrow of the given direction bounded
	by the provided rectangle.
	I remain unclear about when this vs the other similarly named
	message is sent"
	| form adjustedSize |
	form := PltWindowButtonForms arrowFormOfDirection: aSymbol.
	adjustedSize := (aRectangle width @ aRectangle height).
	(adjustedSize > form extent)
		ifTrue: [ 
			form offset: (adjustedSize - form extent) / 2 ].
	^ form asMorph
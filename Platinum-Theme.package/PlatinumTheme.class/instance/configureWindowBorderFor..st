border-styles
configureWindowBorderFor: aWindow
	"TODO: Maybe expand into its own class, if
	insets are needed..."
	| b1 b2 b3 |
	b1 := SimpleBorder new
		color: Color black;
		width: 1.
	b2 := SimpleBorder new
		color: Color white;
		width: 1.
	b3 := SimpleBorder new
		color: (Color r: 204 g: 204 b: 204 range: 255);
		width: 2.
	aWindow borderWidth: 4.
	^ aWindow borderStyle: (CompositeBorder new borders: {b1. b2. b3 }).
	
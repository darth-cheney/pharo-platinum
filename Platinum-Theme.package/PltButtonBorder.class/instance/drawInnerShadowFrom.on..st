drawing
drawInnerShadowFrom: rect on: aCanvas
	"Draw the lighter inner shadow"
	| r shadowColor | 
	r := rect insetBy: (0@0 corner: (1@1)).
	shadowColor := self innerShadowColor.
	pressed ifTrue: [ shadowColor := self innerShadowPressedColor ].
	aCanvas 
		line: (r right - 2)@(r top + 1) to: (r right - 2)@(r bottom - 3) width: 1 color: shadowColor;
		line: (r right -2)@(r bottom -3) to: (r right -3)@(r bottom -3) width: 1 color: shadowColor;
		line: (r right -3)@(r bottom -3) to: (r right -3)@(r bottom -2) width: 1 color: shadowColor;
		line: (r right -3)@(r bottom -2) to: (r left + 1)@(r bottom -2) width: 1 color: shadowColor.
	
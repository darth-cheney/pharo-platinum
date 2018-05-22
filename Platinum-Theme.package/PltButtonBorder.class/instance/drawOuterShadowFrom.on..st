drawing
drawOuterShadowFrom: rect on: aCanvas
	"Draw the bottom right darker shadow bevel"
	| shadowColor r |
	r := rect insetBy: (0@0 corner: 1@1).
	shadowColor := self outerShadowColor.
	pressed ifTrue: [ shadowColor := self outerShadowPressedColor  ].
	aCanvas
		line: (r right - 1)@(r top + 2) to: (r right - 1)@(r bottom - 2) width: 1 color: shadowColor;
		line: (r right - 1)@(r bottom - 2) to: (r right - 2)@(r bottom - 2) width: 1 color: shadowColor;
		line: (r right - 2)@(r bottom - 2) to: (r right - 2)@(r bottom - 1) width: 1 color: shadowColor;
		line: (r right - 2)@(r bottom -1) to: (r left + 2)@(r bottom - 1) width: 1 color: shadowColor.
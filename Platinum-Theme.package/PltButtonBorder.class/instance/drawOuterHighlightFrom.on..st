drawing
drawOuterHighlightFrom: rect on: aCanvas
	"Draw the [pressed] top left corner outer highlight"
	| r hColor |
	r := rect insetBy: (0@0 corner: 1@1).
	hColor := self outerHighlightPressedColor.
	aCanvas
		line: (r right -2)@(r top + 1) to: (r left + 2)@(r top + 1) width: 1 color: hColor;
		line: (r left + 2)@(r top + 1) to: (r left + 2)@(r top + 2) width: 1 color: hColor;
		line: (r left + 2)@(r top + 2) to: (r left + 1)@(r top + 2) width: 1 color: hColor;
		line: (r left + 1)@(r top + 2) to: (r left + 1)@(r bottom -2) width: 1 color: hColor.
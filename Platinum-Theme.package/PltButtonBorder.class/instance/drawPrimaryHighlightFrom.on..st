drawing
drawPrimaryHighlightFrom: rect on: aCanvas
	"Draws the white highlight in the button at the top left corner"
	| r hColor |
	hColor := Color white.
	r := rect insetBy: (0@0 corner: 1@1).
	aCanvas
		line: (r left + 2)@(r bottom - 1) to: (r left + 2)@(r top + 2) width: 1 color: hColor;
		line: (r left + 3)@(r top + 2) to: (r left + 3)@(r top + 3) width: 1 color: hColor;
		line: (r left + 3)@(r top + 2) to: (r right - 1)@(r top + 2) width: 1 color: hColor.
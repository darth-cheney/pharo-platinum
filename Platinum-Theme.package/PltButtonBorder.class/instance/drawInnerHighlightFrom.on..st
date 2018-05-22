drawing
drawInnerHighlightFrom: rect on: aCanvas
	"Draw the inner highlight in the top left corner"
	| r hColor |
	r := rect insetBy: (0@0 corner: 1@1).
	hColor := self innerHighlightPressedColor.
	aCanvas
		line: (r right -1)@(r top + 2) to: (r left + 3)@(r top + 2) width: 1 color: hColor;
		line: (r left + 3)@(r top + 2) to: (r left + 3)@(r top + 3) width: 1 color: hColor;
		line: (r left + 3)@(r top + 3) to: (r left + 2)@(r top + 3) width: 1 color: hColor;
		line: (r left + 2)@(r top + 3) to: (r left + 2)@(r bottom - 3) width: 1 color: hColor.
		
as yet unclassified
drawTestRect: rect on: aCanvas
	"This should be deleted"
	| r |
	r := rect insetBy: (0@0 corner: 1@1).
	aCanvas line: (r topRight) to: (r bottomLeft) width: 1 color: Color black.
	aCanvas line: (r topLeft) to: (r bottomRight) width: 1 color: Color black.
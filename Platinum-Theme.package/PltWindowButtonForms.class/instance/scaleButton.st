as yet unclassified
scaleButton
	| canvas rect |
	canvas := FormCanvas on: self closeButton.
	rect := (0@0 extent: canvas extent).
	rect := rect insetBy: (1@1 corner: 6@6).
	canvas
		line: rect topRight to: rect bottomRight width: 1 color: Color black;
		line: rect bottomRight to: rect bottomLeft width: 1 color: Color black;
		line: rect bottomLeft to: rect topLeft width: 1 color: Color black;
		line: rect topLeft to: rect topRight width: 1 color: Color black.
	^ canvas form
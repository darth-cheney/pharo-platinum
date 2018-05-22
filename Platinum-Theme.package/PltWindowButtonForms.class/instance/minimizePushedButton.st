as yet unclassified
minimizePushedButton
	| canvas rect |
	canvas := FormCanvas on: self closePushedButton.
	rect := (0@0 extent: canvas extent).
	rect := rect insetBy: (1@5 corner: 2@6).
	canvas
		line: rect topRight to: rect topLeft width: 1 color: Color black;
		line: rect bottomRight to: rect bottomLeft width: 1 color: Color black.
	^ canvas form
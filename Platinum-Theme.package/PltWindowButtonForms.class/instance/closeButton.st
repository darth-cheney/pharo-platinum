accessing
closeButton
	"Respond with the Platinum window close button form."
	| canvas c1 c2 c3 c4 c5 gradRect gradient blackRect |
	canvas := FormCanvas extent: 13@13.
	c1 := Color r: 136 g: 136 b: 136 range: 255.
	c2 := Color white.
	c3 := Color black.
	c4 := Color r: 204 g: 204 b: 204 range: 255.
	c5 := Color r: 153 g: 153 b: 153 range: 255.
	blackRect := Rectangle point: 1@1 point: 11@11.
	gradRect := Rectangle point: 3@3 point: 10@10.
	gradient := BoundedGradientFillStyle new
		colorRamp: { 0.0 -> c5. 1.0 -> c2 };
		origin: gradRect origin;
		direction: gradRect extent;
		extent: gradRect extent.
	canvas
		line: (0@11) to: (0@0) width: 1 color: c1;
		line: (0@0) to: (11@0) width: 1 color: c1;
		line: (12@1) to: (12@12) width: 1 color: c2;
		line: (12@12) to: (1@12) width: 1 color: c2;
		line: (blackRect topLeft) to: (blackRect topRight) width: 1 color: c3;
		line: (blackRect topRight) to: (blackRect bottomRight) width: 1 color: c3;
		line: (blackRect bottomRight) to: (blackRect bottomLeft) width: 1 color: c3;
		line: (blackRect bottomLeft) to: (blackRect topLeft) width: 1 color: c3;
		line: (10@3) to: (10@10) width: 1 color: c1;
		line: (10@10) to: (3@10) width: 1 color: c1;
		line: (10@2) to: (2@2) width: 1 color: c4;
		line: (2@2) to: (2@10) width: 1 color: c4.
	canvas
		fillRectangle: gradRect basicFillStyle: gradient.
	canvas form colorAt: 2@2 put: Color white.
	^ canvas form.
	
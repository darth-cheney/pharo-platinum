drawing
frameRectangle: rect on: aCanvas
	| r |
	r := rect insetBy: (0@0 corner: 1@1).
	aCanvas
		line: (r bottomLeft - (0@1)) to: (r topLeft) width: 1 color: self darkBorderColor;
		line: (r topLeft) to: (r topRight - (1@0)) width: 1 color: self darkBorderColor;
		line: (r topRight + (0@1)) to: (r bottomRight) width: 1 color: self lightBorderColor;
		line: (r bottomRight) to: (r bottomLeft + (1@0)) width: 1 color: self lightBorderColor.
	"Now the inner black border all the way around"
	aCanvas
		line: (r topLeft + (1@1)) to: (r topRight + (-1@1)) width: 1 color: self primaryBorderColor;
		line: (r topRight + (-1@1)) to: (r bottomRight - (1@1)) width: 1 color: self primaryBorderColor;
		line: (r bottomRight - (1@1)) to: (r bottomLeft - (-1@1)) width: 1 color: self primaryBorderColor;
		line: (r bottomLeft - (-1@1)) to: (r topLeft + (1@1)) width: 1 color: self primaryBorderColor. 
	
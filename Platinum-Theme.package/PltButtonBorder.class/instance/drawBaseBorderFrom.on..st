drawing
drawBaseBorderFrom: rect on: aCanvas
	"Draw the outer black line with  the rounded corners."
	| r borderColor |
	borderColor := self borderOutlineColor.
	r := rect insetBy: ((0@0) corner: (1@1)).
	aCanvas
		line: r topLeft + (2@0) to: r topRight - (2@0) width: 1 color: borderColor;
		line: r topRight + (-1@1) to: r topRight + (-1@1) width: 1 color: borderColor;
		line: r topRight + (0@2) to: r bottomRight - (0@2) width: 1 color: borderColor;
		line: r bottomRight - (1@1) to: r bottomRight - (1@1) width: 1 color: borderColor;
		line: r bottomRight - (2@0) to: r bottomLeft + (2@0) width: 1 color: borderColor;
		line: r bottomLeft - (-1@1) to: r bottomLeft - (-1@1) width: 1 color: borderColor;
		line: r bottomLeft - (0@2) to: r topLeft + (0@2) width: 1 color: borderColor;
		line: r topLeft + (1@1) to: r topLeft + (1@1) width: 1 color: borderColor
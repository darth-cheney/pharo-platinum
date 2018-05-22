as yet unclassified
drawDarkSlatsOn: aCanvas
	| col |
	col := Color r: 119 g: 119 b: 119 range: 255.
	1 to: 11 by: 2 do: [ :num |
		aCanvas
			line: (self innerBounds left + 1)@(self bounds origin y + num)
			to: (self innerBounds right)@(self bounds origin y + num)
			width: 1
			color: col ].
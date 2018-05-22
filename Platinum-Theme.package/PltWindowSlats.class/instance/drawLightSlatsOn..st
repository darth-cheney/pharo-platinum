as yet unclassified
drawLightSlatsOn: aCanvas
	0 to: 10 by: 2 do: [ :num |
		aCanvas
			line: (self innerBounds left)@(self bounds origin y + num)
			to: (self innerBounds right - 1)@(self bounds origin y + num)
			width: 1
			color: Color white ].
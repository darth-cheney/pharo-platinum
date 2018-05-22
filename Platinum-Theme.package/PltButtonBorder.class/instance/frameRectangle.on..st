drawing
frameRectangle: rect on: aCanvas
	"Draw all parts of the border"
	self 
		drawBaseBorderFrom: rect on: aCanvas;
	 	drawOuterShadowFrom: rect on: aCanvas;
		drawInnerShadowFrom: rect on: aCanvas.
	pressed 
		ifTrue: [ 
			self 
				drawOuterHighlightFrom: rect on: aCanvas;
				drawInnerHighlightFrom: rect on: aCanvas ]
		ifFalse: [ self drawPrimaryHighlightFrom: rect on: aCanvas ].
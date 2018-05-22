label-styles
configureWindowLabelAreaFor: aWindow
	"Here is where we configure the title bar for the window"
	"super configureWindowLabelAreaFor: aWindow."
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @0).
	aWindow hasCloseBox ifTrue: [ aWindow addCloseBox ].
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @0).
	aWindow labelArea
		addMorphBack: (PltWindowSlats new hResizing: #spaceFill).
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @0).
	aWindow basicLabel ifNotNil: [ :label |
		label hResizing: #shrinkWrap.
		aWindow labelArea addMorphBack: label.
		label layoutInset: 0@(-2) ].
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @0).
	aWindow labelArea
		addMorphBack: (PltWindowSlats new hResizing: #spaceFill).
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @ 0).
	aWindow hasExpandBox ifTrue: [ aWindow addExpandBox ].
	aWindow hasCollapseBox ifTrue: [ aWindow addCollapseBox ].
	aWindow hasMenuBox ifTrue: [ aWindow addMenuControl ].
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @ 0)
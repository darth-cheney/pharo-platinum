label-styles
createCollapseBoxFor: aWindow
	"Create the scale button"
	| form msb |
	form := PltWindowButtonForms new minimizeButton.
	msb := MultistateButtonMorph new extent: form extent.
	msb activeEnabledNotOverUpFillStyle: (ImageFillStyle form: form).
	msb activeDisabledNotOverUpFillStyle: (ImageFillStyle form: form).
	msb passiveEnabledNotOverUpFillStyle: (ImageFillStyle form: form).
	msb passiveDisabledNotOverUpFillStyle: (ImageFillStyle form: form).
	msb activeEnabledOverUpFillStyle: (ImageFillStyle form: form).
	msb passiveEnabledOverUpFillStyle: (ImageFillStyle form: form).
	msb passiveEnabledOverDownFillStyle: (ImageFillStyle form: form).
	
	form := PltWindowButtonForms new minimizePushedButton.
	msb activeEnabledOverDownFillStyle: (ImageFillStyle form: form).
	msb activeEnabledNotOverDownFillStyle: (ImageFillStyle form: form).
	
	msb
		addUpAction: [ aWindow collapseBoxHit ];
		setBalloonText: 'Expand this window'.
	^ msb
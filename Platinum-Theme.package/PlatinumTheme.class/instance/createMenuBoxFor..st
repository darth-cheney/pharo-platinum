label-styles
createMenuBoxFor: aWindow
	"GLM tools will freak out if we don't return
	some kind of IconicButton here. So make one with
	no dimensions"
	| blankButton |
	blankButton := IconicButton new.
	blankButton
		labelGraphic: (Form extent: 0@0);
		width: 0;
		height: 0;
		color: Color red.
	^ blankButton
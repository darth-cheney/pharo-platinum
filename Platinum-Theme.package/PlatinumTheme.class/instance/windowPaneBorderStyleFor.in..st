border-styles
windowPaneBorderStyleFor: aMorph in: aSystemWindow
	"Draw the inner border for any panes that appear in a window"
	aMorph borderWidth: 1.
	^ PltWindowPaneBorder new.
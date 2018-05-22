scrollbars
basicCreateArrowOfDirection: aSymbolDirection size: finalSizeInteger color: aColor 
	"PRIVATE - create an arrow with aSymbolDirectionDirection,  
	finalSizeInteger and aColor.
	aSymbolDirectionDirection = #top, #bottom. #left or #right .
	Try with:  
	(UITheme current
		basicCreateArrowOfDirection: #top 
		size: 32 
		color: Color lightGreen) asMorph openInHand. 
	Fixed to work with translucent colours.
	I have overridden this, because it's the only way
	to draw scrollbar arrows! See the original implementation
	in UITheme -- EG"
	
	|form arrow |
	form := Form
		extent: finalSizeInteger asPoint" * resizeFactor"
		depth: Display depth.
	form fillColor: Color transparent.
	arrow := (self createArrowOfDirection: aSymbolDirection in: form boundingBox).
	self
		updateScrollBarButtonAspect: arrow
		color: (aColor alphaMixed: 0.7 with: Color black).
	arrow fullDrawOn: form getCanvas.
	^form trimBordersOfColor: Color transparent
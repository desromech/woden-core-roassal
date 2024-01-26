"
I am a layout that aligns the elements along a line on the Y axis.
"
Class {
	#name : #RWYLineLayout,
	#superclass : #RWAbstractLineLayout,
	#category : #'WodenRoassal-Core'
}

{ #category : #'instance creation' }
RWYLineLayout >> on: aCollectionOfElements [
	| y |
	y := 0.0.
	aCollectionOfElements do: [ :eachElement |
		eachElement translateToY: y.
		y := y + eachElement height + gap
	].
]

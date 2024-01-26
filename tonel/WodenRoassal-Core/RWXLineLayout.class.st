"
I am a layout that aligns the elements along a line on the X axis.
"
Class {
	#name : #RWXLineLayout,
	#superclass : #RWAbstractLineLayout,
	#category : #'WodenRoassal-Core-Core'
}

{ #category : #'instance creation' }
RWXLineLayout >> on: aCollectionOfElements [
	| x |
	x := 0.0.
	aCollectionOfElements do: [ :eachElement |
		eachElement translateToX: x.
		x := x + eachElement width + gap
	].
]

"
I am a layout that aligns the elements along a line on the Z axis.
"
Class {
	#name : #RWZLineLayout,
	#superclass : #RWAbstractLineLayout,
	#category : #'WodenRoassal-Core'
}

{ #category : #'instance creation' }
RWZLineLayout >> on: aCollectionOfElements [
	| z |
	z := 0.0.
	aCollectionOfElements do: [ :eachElement |
		eachElement translateToZ: z.
		z := z + eachElement depth + gap
	].
]

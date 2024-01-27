"
This is an utility class for moving a group of elements.
"
Class {
	#name : #RWMove,
	#superclass : #Object,
	#category : #'WodenRoassal-Core-Layout'
}

{ #category : #algorithm }
RWMove class >> boundingBoxOfElements: aCollection [
	| bbox |
	bbox := AABox empty.
	aCollection do: [ :each | bbox insertBox: each boundingBox ].
	^ bbox
]

{ #category : #algorithm }
RWMove class >> centerElements: elements [
	self centerElements: elements at: Vector3 zeros
]

{ #category : #algorithm }
RWMove class >> centerElements: elements at: aPoint [
	| translation |
	translation := aPoint - (self boundingBoxOfElements: elements) center.
	elements do: [ :el | el translateBy: translation ]

]

{ #category : #algorithm }
RWMove class >> placeElements: aCollection onTopOf: aPoint [

	| translation |
	self centerElements: aCollection at: aPoint.
	
	translation := aPoint y - (self boundingBoxOfElements: aCollection) bottom.
	aCollection do: [ :el | el translateByY: translation  ]
]

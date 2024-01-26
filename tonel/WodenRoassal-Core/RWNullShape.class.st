"
I am shape that does nothing.
"
Class {
	#name : #RWNullShape,
	#superclass : #RWAbstractSolidShape,
	#category : #'WodenRoassal-Core'
}

{ #category : #'as yet unclassified' }
RWNullShape >> constructInWodenSceneNode: aWDSceneNode forElement: anElement [
	"Nothing is required here."
]

{ #category : #testing }
RWNullShape >> isNullShape [
	^ true
]

"
I am shape that does nothing.
"
Class {
	#name : #RWNullShape,
	#superclass : #RWShape,
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

"
I am shape that does nothing.
"
Class {
	#name : #RWNullShape,
	#superclass : #RWAbstractSolidShape,
	#category : #'WodenRoassal-Core'
}

{ #category : #'scene presentation' }
RWNullShape >> constructInWodenSceneNode: aWDSceneNode forElement: anElement [
	^ nil
]

{ #category : #testing }
RWNullShape >> isNullShape [
	^ true
]

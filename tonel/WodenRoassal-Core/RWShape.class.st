"
I am shape that is used by the elements in Woden Roassal.
"
Class {
	#name : #RWShape,
	#superclass : #Object,
	#category : #'WodenRoassal-Core'
}

{ #category : #requirements }
RWShape class >> element [
	^ self new element
]

{ #category : #requirements }
RWShape class >> elementOn: aModel [
	^ self new elementOn: aModel
]

{ #category : #requirements }
RWShape class >> elementsOn: aModel [
	^ self new elementsOn: aModel
]

{ #category : #'as yet unclassified' }
RWShape >> constructInWodenSceneNode: aWDSceneNode forElement: anElement [
	self subclassResponsibility
]

{ #category : #requirements }
RWShape >> element [
	^ RWElement new shape: self; yourself
]

{ #category : #requirements }
RWShape >> elementOn: aModel [
	^ RWElement new shape: self; model: aModel; yourself
]

{ #category : #requirements }
RWShape >> elementsOn: aCollectionOfModels [
	^ aCollectionOfModels collect: [ :eachElement | self elementOn: eachElement ]
]

{ #category : #testing }
RWShape >> isNullShape [
	^ false
]

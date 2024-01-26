"
I am a specific layout in Woden Roassal.
"
Class {
	#name : #RWLayout,
	#superclass : #Object,
	#category : #'WodenRoassal-Core-Core'
}

{ #category : #'instance creation' }
RWLayout class >> on: aCollectionOfElements [
	^ self new on: aCollectionOfElements
]

{ #category : #'instance creation' }
RWLayout >> on: aCollectionOfElements [
	self subclassResponsibility
]

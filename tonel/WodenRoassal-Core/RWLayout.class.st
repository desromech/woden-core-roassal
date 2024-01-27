"
I am a specific layout in Woden Roassal.
"
Class {
	#name : #RWLayout,
	#superclass : #Object,
	#category : #'WodenRoassal-Core-Layout'
}

{ #category : #'instance creation' }
RWLayout class >> on: aCollectionOfElements [
	^ self new on: aCollectionOfElements
]

{ #category : #'as yet unclassified' }
RWLayout >> centerElements: elements [
	RWMove centerElements: elements
]

{ #category : #'instance creation' }
RWLayout >> on: aCollectionOfElements [
	self subclassResponsibility
]

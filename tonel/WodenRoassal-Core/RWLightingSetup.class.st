"
I provide a view lighting setup.
"
Class {
	#name : #RWLightingSetup,
	#superclass : #Object,
	#category : #'WodenRoassal-Core-Core'
}

{ #category : #converting }
RWLightingSetup class >> asLightingSetup [
	^ self new
]

{ #category : #converting }
RWLightingSetup >> asLightingSetup [
	^ self
]

{ #category : #presentation }
RWLightingSetup >> constructInScene: scene forView: view [
	self subclassResponsibility
]

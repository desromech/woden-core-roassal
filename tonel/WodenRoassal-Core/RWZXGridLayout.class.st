"
I am a layout that places elements along a rectangular grid aligned to the ZX plane.
"
Class {
	#name : #RWZXGridLayout,
	#superclass : #RWAbstractGridLayout,
	#category : #'WodenRoassal-Core-Layout'
}

{ #category : #hooks }
RWZXGridLayout >> xdirection [
	^ Vector3 z: 1
]

{ #category : #hooks }
RWZXGridLayout >> ydirection [
	^ Vector3 x: 1
]

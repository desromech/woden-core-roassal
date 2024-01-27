"
I am a layout that places elements along a rectangular grid aligned to the XZ plane.
"
Class {
	#name : #RWXZGridLayout,
	#superclass : #RWAbstractGridLayout,
	#category : #'WodenRoassal-Core-Layout'
}

{ #category : #hooks }
RWXZGridLayout >> xdirection [
	^ Vector3 x: 1
]

{ #category : #hooks }
RWXZGridLayout >> ydirection [
	^ Vector3 z: 1
]

"
I am a layout that places elements along a rectangular grid aligned to the YZ plane.
"
Class {
	#name : #RWYZGridLayout,
	#superclass : #RWAbstractGridLayout,
	#category : #'WodenRoassal-Core-Layout'
}

{ #category : #hooks }
RWYZGridLayout >> xdirection [
	^ Vector3 y: 1
]

{ #category : #hooks }
RWYZGridLayout >> ydirection [
	^ Vector3 z: 1
]

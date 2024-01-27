"
I am a layout that places elements along a rectangular grid aligned to the XY plane.
"
Class {
	#name : #RWXYGridLayout,
	#superclass : #RWAbstractGridLayout,
	#category : #'WodenRoassal-Core-Layout'
}

{ #category : #hooks }
RWXYGridLayout >> xdirection [
	^ Vector3 x: 1
]

{ #category : #hooks }
RWXYGridLayout >> ydirection [
	^ Vector3 y: 1
]

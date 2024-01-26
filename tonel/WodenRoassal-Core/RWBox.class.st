"
I am box shape.
"
Class {
	#name : #RWBox,
	#superclass : #RWBasicShape,
	#category : #'WodenRoassal-Core'
}

{ #category : #hooks }
RWBox >> constructBasicShapeMesh [
	^ WDMeshBuilder new
		addCubeWithWidth: 1.0 height: 1.0 depth: 1.0;
		mesh
]

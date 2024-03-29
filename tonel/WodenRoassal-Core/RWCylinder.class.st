"
I am a cylinder shape.
"
Class {
	#name : #RWCylinder,
	#superclass : #RWBasicShape,
	#category : #'WodenRoassal-Core-Core'
}

{ #category : #hooks }
RWCylinder class >> constructBasicShapeMesh [
	^ WDMeshBuilder new
		  addCylinderWithRadius: 0.5 halfHeight: 0.5 segments: self defaultSegments;
		  mesh
]

{ #category : #settings }
RWCylinder class >> defaultSegments [
	^ 16
]

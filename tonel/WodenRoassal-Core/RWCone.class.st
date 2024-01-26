"
I am cone shape.
"
Class {
	#name : #RWCone,
	#superclass : #RWBasicShape,
	#category : #'WodenRoassal-Core'
}

{ #category : #hooks }
RWCone class >> constructBasicShapeMesh [
	^ WDMeshBuilder new addConeWithRadius: 1.0 halfDepth: 1.0 segments: self defaultSegments;
		mesh
]

{ #category : #settings }
RWCone class >> defaultSegments [
	^ 16
]

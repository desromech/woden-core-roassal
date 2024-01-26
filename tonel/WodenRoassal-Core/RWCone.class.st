"
I am cone shape.
"
Class {
	#name : #RWCone,
	#superclass : #RWBasicShape,
	#category : #'WodenRoassal-Core'
}

{ #category : #hooks }
RWCone >> constructBasicShapeMesh [
	^ WDMeshBuilder new
		addConeWithRadius: 1.0 halfDepth: 1.0 segments: self class defaultSegments;
		mesh
]

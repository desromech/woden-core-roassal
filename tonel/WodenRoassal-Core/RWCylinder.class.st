"
I am a cylinder shape.
"
Class {
	#name : #RWCylinder,
	#superclass : #RWBasicShape,
	#category : #'WodenRoassal-Core'
}

{ #category : #hooks }
RWCylinder >> constructBasicShapeMesh [
	^ WDMeshBuilder new
		addCylinderWithRadius: 0.5 halfHeight: 0.5 segments: self class defaultSegments;
		mesh
]

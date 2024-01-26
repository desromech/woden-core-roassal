"
I am box shape.
"
Class {
	#name : #RWBox,
	#superclass : #RWBasicShape,
	#category : #'WodenRoassal-Core-Core'
}

{ #category : #hooks }
RWBox class >> constructBasicShapeMesh [
	^ WDMeshBuilder new
		addCubeWithWidth: 1.0 height: 1.0 depth: 1.0;
		generateTexcoords0WithFacePlanarTransformWithScale: Vector2 ones;
		generateTangentSpaceFrame;
		mesh
]

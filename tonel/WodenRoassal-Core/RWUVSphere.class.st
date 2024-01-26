"
I am an uv sphere shape.
"
Class {
	#name : #RWUVSphere,
	#superclass : #RWBasicShape,
	#category : #'WodenRoassal-Core'
}

{ #category : #hooks }
RWUVSphere class >> constructBasicShapeMesh [
	^ WDMeshBuilder new
		addUVSphereWithDiameter: 1.0 segments: self defaultSegments slices: self defaultSlices;
		generateTexcoords0WithSphericalProjection;
		generateTangentSpaceFrame;
		mesh
]

{ #category : #settings }
RWUVSphere class >> defaultSegments [
	^ 16
]

{ #category : #settings }
RWUVSphere class >> defaultSlices [
	^ 16
]

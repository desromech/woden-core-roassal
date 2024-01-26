"
I am an uv sphere shape.
"
Class {
	#name : #RWUVSphere,
	#superclass : #RWBasicShape,
	#category : #'WodenRoassal-Core'
}

{ #category : #settings }
RWUVSphere class >> defaultSegments [
	^ 16
]

{ #category : #settings }
RWUVSphere class >> defaultSlices [
	^ 16
]

{ #category : #hooks }
RWUVSphere >> constructBasicShapeMesh [
	^ WDMeshBuilder new
		addUVSphereWithDiameter: 1.0 segments: self class defaultSegments slices: self class defaultSlices;
		mesh
]

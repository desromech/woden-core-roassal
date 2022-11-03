"
I am box shape.
"
Class {
	#name : #RWBox,
	#superclass : #RWBasicShape,
	#category : #'WodenRoassal-Core'
}

{ #category : #'as yet unclassified' }
RWBox >> constructInWodenSceneNode: node forElement: anElement [
	| mesh |
	mesh := WDMeshBuilder new
		addCubeWithWidth: 1.0 height: 1.0 depth: 1.0;
		mesh.
	node renderables: {mesh}.

]

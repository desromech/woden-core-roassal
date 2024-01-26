"
I am basic geometric shape which typically provides some performance optimizations in terms of reusing meshes.
"
Class {
	#name : #RWBasicShape,
	#superclass : #RWAbstractSolidShape,
	#category : #'WodenRoassal-Core'
}

{ #category : #hooks }
RWBasicShape >> constructBasicShapeMesh [
	self subclassResponsibility
]

{ #category : #'scene presentation' }
RWBasicShape >> constructInWodenSceneNode: node forElement: anElement [
	| mesh shapeNode |
	mesh := self constructBasicShapeMesh.
	shapeNode := WDSceneNode new
		transform: (self transformFor: anElement);
		renderables: {mesh};
		yourself.
	^ shapeNode

]

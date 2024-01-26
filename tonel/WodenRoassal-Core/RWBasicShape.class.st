"
I am basic geometric shape which typically provides some performance optimizations in terms of reusing meshes.
"
Class {
	#name : #RWBasicShape,
	#superclass : #RWAbstractSolidShape,
	#classInstVars : [
		'basicShapeMeshTemplate'
	],
	#category : #'WodenRoassal-Core'
}

{ #category : #hooks }
RWBasicShape class >> constructBasicShapeMesh [
	^ self subclassResponsibility
]

{ #category : #'mesh template' }
RWBasicShape class >> getOrCreateBasicShapeMeshTemplate [
	^ basicShapeMeshTemplate ifNil: [ basicShapeMeshTemplate := self constructBasicShapeMesh ]
]

{ #category : #'scene presentation' }
RWBasicShape >> constructInWodenSceneNode: node forElement: anElement [
	| mesh shapeNode |
	mesh := self class getOrCreateBasicShapeMeshTemplate copyWithMaterial: (self materialFor: anElement).
	shapeNode := WDSceneNode new
		transform: (self transformFor: anElement);
		renderables: {mesh};
		yourself.
	^ shapeNode

]

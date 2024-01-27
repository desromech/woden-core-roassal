"
I hold some basic examples on my class side.
"
Class {
	#name : #RWBasicExamples,
	#superclass : #Object,
	#category : #'WodenRoassal-Examples'
}

{ #category : #'examples - model' }
RWBasicExamples class >> exampleGrowingCubes [
	| v shape es |
	v := RWView new.
	shape := RWBox new size: #yourself.
	es := shape elementsOn: (1 to: 3 by: 0.5).
	RWXLineLayout on: es.
	v addAll: es.
	v open
]

{ #category : #'examples - shapes' }
RWBasicExamples class >> exampleOneBox [
	| v |
	v := RWView new.
	v add: RWBox element.
	v open
]

{ #category : #'examples - shapes' }
RWBasicExamples class >> exampleOneCone [
	| v |
	v := RWView new.
	v add: RWCone element.
	v open
]

{ #category : #'examples - shapes' }
RWBasicExamples class >> exampleOneCylinder [
	| v |
	v := RWView new.
	v add: RWCylinder element.
	v open
]

{ #category : #'examples - shapes' }
RWBasicExamples class >> exampleOneNormalTextured2Box [
	| v |
	v := RWView new.
	v add: (RWBox new
		texture: WDSceneExamples checkboardTexture;
		normalTexture: WDSceneExamples checkboardNormalTexture;
		yourself) element.
	v open
]

{ #category : #'examples - shapes' }
RWBasicExamples class >> exampleOnePyramid [
	| v |
	v := RWView new.
	v add: RWPyramid element.
	v open
]

{ #category : #'examples - shapes' }
RWBasicExamples class >> exampleOneRedBox [
	| v |
	v := RWView new.
	v add: RWBox red element.
	v open
]

{ #category : #'examples - shapes' }
RWBasicExamples class >> exampleOneTexturedBox [
	| v |
	v := RWView new.
	v add: (RWBox new texture: WDSceneExamples checkboardTexture) element.
	v open
]

{ #category : #'examples - shapes' }
RWBasicExamples class >> exampleOneUVSphere [
	| v |
	v := RWView new.
	v add: RWUVSphere element.
	v open
]

{ #category : #'examples - shapes' }
RWBasicExamples class >> exampleThreeBoxes [
	| v |
	v := RWView new.
	v add: (RWBox element).
	v add: (RWBox element).
	v add: (RWBox element).
	RWXLineLayout on: v elements.
	v open
]

{ #category : #'see class side' }
RWBasicExamples >> seeClassSide [
]

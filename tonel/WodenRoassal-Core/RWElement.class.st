"
I am an element in a Woden Roassal view.
"
Class {
	#name : #RWElement,
	#superclass : #Object,
	#instVars : [
		'model',
		'transform',
		'shape',
		'view'
	],
	#category : #'WodenRoassal-Core'
}

{ #category : #'as yet unclassified' }
RWElement >> addedInView: aView [
	self assert: view isNil.
	view := aView.
]

{ #category : #'as yet unclassified' }
RWElement >> constructWodenSceneNode [
	| node |
	node := WDSceneNode new
		transform: transform;
		yourself.

	shape constructInWodenSceneNode: node forElement: self.
		
	^ node
]

{ #category : #accessing }
RWElement >> depth [
	^ self extent z
]

{ #category : #accessing }
RWElement >> extent [
	^ Vector3 ones
]

{ #category : #accessing }
RWElement >> height [
	^ self extent y
]

{ #category : #initialization }
RWElement >> initialize [
	super initialize.
	transform := TRSTransform3D identity.
	shape := RWNullShape new.
]

{ #category : #accessing }
RWElement >> model [

	^ model
]

{ #category : #accessing }
RWElement >> model: anObject [

	model := anObject
]

{ #category : #accessing }
RWElement >> position [
	^ transform translation
]

{ #category : #accessing }
RWElement >> position: newPosition [
	transform translation: newPosition
]

{ #category : #accessing }
RWElement >> rotation [
	^ transform rotation
]

{ #category : #accessing }
RWElement >> scale [
	^ transform scale
]

{ #category : #accessing }
RWElement >> shape [

	^ shape
]

{ #category : #accessing }
RWElement >> shape: anObject [

	shape := anObject
]

{ #category : #accessing }
RWElement >> transform [

	^ transform
]

{ #category : #accessing }
RWElement >> transform: anObject [

	transform := anObject
]

{ #category : #transformations }
RWElement >> translateBy: translation [
	self position: self position + translation
	
]

{ #category : #transformations }
RWElement >> translateByX: translation [
	self translateBy: (Vector3 x: translation)
	
]

{ #category : #transformations }
RWElement >> translateByX: xTranslation y: yTranslation z: zTranslation [
	self translateBy: (Vector3 x: xTranslation y: yTranslation z: zTranslation)
	
]

{ #category : #transformations }
RWElement >> translateByY: translation [
	self translateBy: (Vector3 y: translation)
	
]

{ #category : #transformations }
RWElement >> translateByZ: translation [
	self translateBy: (Vector3 z: translation)
	
]

{ #category : #transformations }
RWElement >> translateToX: newXPosition [
	self position: (self position copy x: newXPosition)
	
]

{ #category : #accessing }
RWElement >> view [

	^ view
]

{ #category : #accessing }
RWElement >> width [
	^ self extent x
]

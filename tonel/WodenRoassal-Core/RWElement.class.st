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
		'view',
		'localBoundingBox',
		'boundingBox'
	],
	#category : #'WodenRoassal-Core-Core'
}

{ #category : #adding }
RWElement >> addInteraction: anInteraction [
]

{ #category : #notification }
RWElement >> addedInView: aView [
	self assert: view isNil.
	view := aView.
]

{ #category : #accessing }
RWElement >> boundingBox [
	^ boundingBox ifNil: [boundingBox := self localBoundingBox transformedWith: self transform ]
]

{ #category : #presentation }
RWElement >> constructWodenSceneNode [
	| node |
	node := WDSceneNode new
		transform: transform;
		yourself.

	(shape constructInWodenSceneNode: node forElement: self) ifNotNil: [ :shapeNode |
		node add: shapeNode
	].
		
	^ node
]

{ #category : #accessing }
RWElement >> depth [
	^ shape depthFor: self
]

{ #category : #accessing }
RWElement >> extent [
	^ Vector3 x: self width y: self height z: self depth
]

{ #category : #accessing }
RWElement >> height [
	^ shape heightFor: self
]

{ #category : #initialization }
RWElement >> initialize [
	super initialize.
	transform := TRSTransform3D identity.
	shape := RWNullShape new.
]

{ #category : #accessing }
RWElement >> localBoundingBox [
	^ localBoundingBox ifNil: [ localBoundingBox := shape boundingBoxFor: self ]
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
RWElement >> translateTo: newPosition [
	self position: newPosition
	
]

{ #category : #transformations }
RWElement >> translateToX: newXPosition [
	self position: (self position copy x: newXPosition)
	
]

{ #category : #transformations }
RWElement >> translateToX: newX y: newY z: newZ [
	self position: (Vector3 x: newX y: newY z: newZ)
]

{ #category : #transformations }
RWElement >> translateToY: newYPosition [
	self position: (self position copy y: newYPosition)
	
]

{ #category : #transformations }
RWElement >> translateToZ: newZPosition [
	self position: (self position copy z: newZPosition)
	
]

{ #category : #accessing }
RWElement >> view [

	^ view
]

{ #category : #accessing }
RWElement >> width [
	^ shape widthFor: self
]

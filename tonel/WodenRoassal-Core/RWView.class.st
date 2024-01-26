"
I am a view used in a Woden Roassal visualization.
"
Class {
	#name : #RWView,
	#superclass : #Object,
	#instVars : [
		'elements',
		'lightingSetup'
	],
	#category : #'WodenRoassal-Core-Core'
}

{ #category : #adding }
RWView >> add: anElement [
	anElement addedInView: self.
	elements add: anElement.
]

{ #category : #adding }
RWView >> addAll: aCollectionOfElements [
	aCollectionOfElements do: [ :eachElement |
		self add: eachElement
	]
]

{ #category : #'scene presentation' }
RWView >> constructWodenScene [
	| scene |
	scene := WDScene new.
	lightingSetup constructInScene: scene forView: self.
	elements do: [ :el |
		scene add: el constructWodenSceneNode
	].
	^ scene
]

{ #category : #accessing }
RWView >> elements [

	^ elements
]

{ #category : #initialization }
RWView >> initialize [
	super initialize.
	self lightingSetup: RWBasicLightingSetup.
	elements := OrderedCollection new.
]

{ #category : #accessing }
RWView >> lightingSetup [

	^ lightingSetup
]

{ #category : #accessing }
RWView >> lightingSetup: aLightingSetup [
	lightingSetup := aLightingSetup asLightingSetup
]

{ #category : #'scene presentation' }
RWView >> open [
	^ self constructWodenScene openInWindow
]

{ #category : #'scene presentation' }
RWView >> openInNullWindow [
	| window |
	window := RWNullWindow for: self.
	window open.
	^ window
]

"
I am a view used in a Woden Roassal visualization.
"
Class {
	#name : #RWView,
	#superclass : #Object,
	#instVars : [
		'elements'
	],
	#category : #'WodenRoassal-Core'
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

{ #category : #'as yet unclassified' }
RWView >> constructWodenScene [
	| scene |
	scene := WDScene new.
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
	elements := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
RWView >> open [
	^ self constructWodenScene openInWindow
]

{ #category : #'as yet unclassified' }
RWView >> openInNullWindow [
	| window |
	window := RWNullWindow for: self.
	window open.
	^ window
]

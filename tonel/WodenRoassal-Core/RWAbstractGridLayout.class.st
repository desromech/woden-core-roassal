"
I am a layout that places elements along a rectangular grid.
"
Class {
	#name : #RWAbstractGridLayout,
	#superclass : #RWLayout,
	#instVars : [
		'gap'
	],
	#category : #'WodenRoassal-Core-Layout'
}

{ #category : #testing }
RWAbstractGridLayout class >> isAbstract [
	^ self == RWAbstractGridLayout
]

{ #category : #accessing }
RWAbstractGridLayout >> gap [

	^ gap
]

{ #category : #accessing }
RWAbstractGridLayout >> gap: anObject [

	gap := anObject
]

{ #category : #initialization }
RWAbstractGridLayout >> initialize [
	super initialize.
	
	gap := 1
]

{ #category : #'instance creation' }
RWAbstractGridLayout >> on: elements [
	| u v w h  areaVector maxLineItems lineItemCount maxLastLineHeight currentPosition |
	u := self xdirection.
	v := self ydirection.
	areaVector := u + v.
	elements ifEmpty: [ ^ self ].
	elements sort: [ :a :b |
		(a extent dot: areaVector) < (b extent dot: areaVector).
	].
	maxLineItems := elements size sqrt ceiling.

	lineItemCount := 0.
	maxLastLineHeight := 0.0.
	
	currentPosition := Vector3 zeros.
	elements do: [ :el |
		w := u dot: el extent.
		h := v dot: el extent.
		
		el translateTo: currentPosition.
		currentPosition := currentPosition + (u * (w + gap)).
		lineItemCount := lineItemCount + 1.
		maxLastLineHeight := maxLastLineHeight max: h.

		(lineItemCount >= maxLineItems) ifTrue: [
			currentPosition := v * ((v dot: currentPosition) + maxLastLineHeight + gap).
			maxLastLineHeight := 0.0.
			lineItemCount := 0.
		]
	].

	self centerElements: elements
]

{ #category : #hooks }
RWAbstractGridLayout >> xdirection [
	self subclassResponsibility 
]

{ #category : #hooks }
RWAbstractGridLayout >> ydirection [
	self subclassResponsibility 
]

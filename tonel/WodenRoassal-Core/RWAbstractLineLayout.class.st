"
I am a layout that aligns the elements along a specific line.
"
Class {
	#name : #RWAbstractLineLayout,
	#superclass : #RWLayout,
	#instVars : [
		'gap'
	],
	#category : #'WodenRoassal-Core-Layout'
}

{ #category : #testing }
RWAbstractLineLayout class >> isAbstract [
	^ self == RWAbstractLineLayout
]

{ #category : #accessing }
RWAbstractLineLayout >> gap [

	^ gap
]

{ #category : #accessing }
RWAbstractLineLayout >> gap: anObject [

	gap := anObject
]

{ #category : #initialization }
RWAbstractLineLayout >> initialize [
	super initialize.
	gap := 1.0.
]

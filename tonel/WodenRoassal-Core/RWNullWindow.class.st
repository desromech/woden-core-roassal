"
I am null Woden Roassal window which is used for performing unit testing.
"
Class {
	#name : #RWNullWindow,
	#superclass : #Object,
	#instVars : [
		'view',
		'scene'
	],
	#category : #'WodenRoassal-Core'
}

{ #category : #constructing }
RWNullWindow class >> for: aRWView [
	^ self new view: aRWView; yourself
]

{ #category : #'instance creation' }
RWNullWindow >> open [
	scene := view constructWodenScene
	
]

{ #category : #accessing }
RWNullWindow >> scene [

	^ scene
]

{ #category : #accessing }
RWNullWindow >> view [

	^ view
]

{ #category : #accessing }
RWNullWindow >> view: anObject [

	view := anObject
]

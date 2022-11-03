"
I am a layout that aligns the elements along a specific line.
"
Class {
	#name : #RWAbstractLineLayout,
	#superclass : #RWLayout,
	#instVars : [
		'gap'
	],
	#category : #'WodenRoassal-Core'
}

{ #category : #initialization }
RWAbstractLineLayout >> initialize [
	super initialize.
	gap := 1.0.
]
